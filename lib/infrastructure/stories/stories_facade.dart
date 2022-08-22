import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';
import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_template/application/user/user_bloc.dart';
import 'package:flutter_template/domain/core/camera/camera_failures.dart';
import 'package:flutter_template/domain/core/enums.dart';
import 'package:flutter_template/domain/core/image_with_caption_model.dart';
import 'package:flutter_template/domain/stories/i_stories_facade.dart';
import 'package:flutter_template/domain/stories/stories_failures.dart';
import 'package:flutter_template/domain/stories/stories_model.dart';
import 'package:flutter_template/domain/stories/story_model.dart';
import 'package:flutter_template/domain/stories/story_seen_model.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/infrastructure/core/firebase_helpers.dart';
import 'package:flutter_template/infrastructure/core/getters.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_video_info/flutter_video_info.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

import '../core/firebase_cloud_messaging.dart';



@LazySingleton(as: IStoriesFacade)
class StoriesFacade implements IStoriesFacade {
  final Reference _storageReference;
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;

  StoriesFacade(this._storageReference, this._firestore, this._auth);

  @override
  Future<Either<StoriesFailure, StoriesModel>> createStories(
      StoriesModel stories,
      ) async {
    List<StoryModel> _stories = stories.stories.where((ee) => (ee.created!.toDate().add(const Duration(hours: 24))).microsecondsSinceEpoch >= DateTime.now().microsecondsSinceEpoch).toList();
    stories.copyWith(stories: _stories);
    await _firestore.storiesCollection
        .doc(_auth.currentUser!.uid)
        .set(stories.toMap(), SetOptions(merge: true));
    return right(stories);
  }

  @override
  Future<Either<StoriesFailure, StoriesModel>> getCurrentUserStory() async {
    final DocumentSnapshot snap = await _firestore.storiesCollection
        .doc(Getters.getCurrentUserUid())
        .get();
    StoriesModel stories;
    if (snap.exists) {
      print('the document exist');
      stories = StoriesModel.fromMap(snap.data() as Map<String, dynamic>);
    } else {
      print('the document doesnt exist');
      stories = StoriesModel.empty();
    }
    //debugPrint("Signed In User Story ===> ${stories.toString()}");
    return right(stories);
  }

  @override
  Future<Either<StoriesFailure, Unit>> createTextStatus(
      StoriesModel currentUser,
      String text,
      Color statusColor,
      ) async {

    List<StoryModel> stories = currentUser.stories.where((ee) => (ee.created!.toDate().add(const Duration(hours: 24))).microsecondsSinceEpoch >= DateTime.now().microsecondsSinceEpoch).toList();
    //final List<StoryModel> stories = currentUser.stories;
    stories.add(
      StoryModel(
          created: Timestamp.now(),
          type: StoryType.text,
          text: text,
          color: statusColor,
          imageUrl: "",
          videoUrl: "",
          react: {},
          storySeen: [],
      ),
    );
    await _firestore.storiesCollection.doc(Getters.getCurrentUserUid()).set(
      currentUser
          .copyWith(
        stories: stories,
      )
          .toMap(),
      SetOptions(merge: true),
    ).then((value)=>{
      FirebaseCloudMessaging().sendStoryNotification()
    });
    return right(unit);
  }


 @override
 Future<Either<StoriesFailure, Unit>> createPaintStatus(StoriesModel currentUser, File imageFile)async{
   List<StoryModel> updatedStory = currentUser.stories;

   final TaskSnapshot storageSnap = await _storageReference
       .statusPicturesStorageCollection
       .child("${Getters.getCurrentUserUid()}/${DateTime.now()}")
       .putFile(imageFile);
   final String uploadUrl = await storageSnap.ref.getDownloadURL();
   updatedStory.add(
       StoryModel(
         created: Timestamp.now(),
         type: StoryType.image,
         text: '',
         imageUrl: uploadUrl,
         duration: 5000,
         videoUrl: "",
         react: {},
         storySeen: [],
       ),);
   await _firestore.storiesCollection.doc(Getters.getCurrentUserUid()).set(
     currentUser
         .copyWith(
       stories: updatedStory,
     )
         .toMap(),
     SetOptions(merge: true),
   );
   return right(unit);
 }

  @override
  Future<Either<StoriesFailure, Unit>> storySeenBy(
      StoriesModel currentUser, int index, KahoChatUser myUser) async {

    if (currentUser.uid != FirebaseAuth.instance.currentUser!.uid) {
      if (!currentUser.stories[index].react!.keys
          .contains(FirebaseAuth.instance.currentUser!.uid)) {
        List<StoryModel> story = currentUser.stories;
        story[index].storySeen!.add(StorySeenModel(
            uid: myUser.uid,
            name: myUser.name,
            profilePictureUrl: myUser.profilePictureUrl,
            // phoneNumber: myUser.phoneNumber,
            seenTime: Timestamp.now()));

        await _firestore.storiesCollection.doc(currentUser.uid).set(
            currentUser.copyWith(stories: story).toMap(),
            SetOptions(merge: true));
      }
      currentUser.stories[index].react!.putIfAbsent(
          FirebaseAuth.instance.currentUser!.uid, () => '${myUser.name}');
      await _firestore.storiesCollection.doc(currentUser.uid).set(
          currentUser.copyWith(stories: currentUser.stories).toMap(),
          SetOptions(merge: true));
    }
    return right(unit);

  }

  @override
  Future<Either<StoriesFailure, Unit>> reactOnStory(
      StoriesModel currentUser, int index, KahoChatUser myUser, String reaction) async {

    if (currentUser.uid != FirebaseAuth.instance.currentUser!.uid) {
      if (!currentUser.stories[index].react!.keys
          .contains(FirebaseAuth.instance.currentUser!.uid)) {
        List<StoryModel> story = currentUser.stories;
        story[index].storySeen!.add(StorySeenModel(
            uid: myUser.uid,
            name: myUser.name,
            profilePictureUrl: myUser.profilePictureUrl,
            // phoneNumber: myUser.phoneNumber,
            seenTime: Timestamp.now()));

        await _firestore.storiesCollection.doc(currentUser.uid).set(
            currentUser.copyWith(stories: story).toMap(),
            SetOptions(merge: true));
      }
      // currentUser.stories[index].react!.putIfAbsent(
      //     FirebaseAuth.instance.currentUser!.uid, () => reaction);

      currentUser.stories[index].react?[FirebaseAuth.instance.currentUser!.uid] = reaction;

      print('reacted-->${reaction}');
      await _firestore.storiesCollection.doc(currentUser.uid).set(
          currentUser.copyWith(stories: currentUser.stories).toMap(),
          SetOptions(merge: true));
    }
    return right(unit);

  }

  @override
  Future<Either<StoriesFailure, Unit>> createImageStatus(
      StoriesModel currentUser,
      List<ImageWithCaptionModel> imageWithCaption,
      ) async {
    Future<List<StoryModel>> uploadImageStories() async{
      List<StoryModel> updatedStory = currentUser.stories;
      // if (imageWithCaption.length != 0) {
      //   imageWithCaption.forEach((imageWC) async{
          for(int i=0; i<=imageWithCaption.length-1; i++){
            final file = File(imageWithCaption[i].imagePath);
            final TaskSnapshot storageSnap = await _storageReference
                .statusPicturesStorageCollection
                .child("${Getters.getCurrentUserUid()}/${DateTime.now()}")
                .putFile(file);
            final String uploadUrl = await storageSnap.ref.getDownloadURL();
            updatedStory.add(
              StoryModel(
                created: Timestamp.now(),
                type: StoryType.image,
                text: imageWithCaption[i].caption,
                imageUrl: uploadUrl,
                duration: 5000,
                videoUrl: "",
                react: {},
                storySeen: [],
              ),
            );
            await _firestore.storiesCollection.doc(Getters.getCurrentUserUid()).set(
              currentUser
                  .copyWith(
                stories: updatedStory,
              )
                  .toMap(),
              SetOptions(merge: true),
            );
            print('inside:$updatedStory');
          }




        // });
      // }
      return await updatedStory;
    }
    List<StoryModel> stories = await uploadImageStories();
    print('outside:$stories');
    // final ImagePicker _picker = ImagePicker();
    // final PickedFile? picker = await _picker.getImage(source: ImageSource.gallery);
    // if (picker != null) {
    //   final File file = File(picker.path);
    //   final TaskSnapshot storageSnap = await _storageReference
    //       .statusPicturesStorageCollection
    //       .child("${Getters.getCurrentUserUid()}/${DateTime.now()}")
    //       .putFile(file);
    //   final String uploadUrl = await storageSnap.ref.getDownloadURL();
    //
    //
    // }

    return await right(unit);
  }

  @override
  Future<Either<StoriesFailure, Unit>> createGifStatus(
      StoriesModel currentUser,
      List<ImageWithCaptionModel> imageWithCaption,
      double duration
      )async{
    List<StoryModel> userStory = currentUser.stories;
    userStory.add(
      StoryModel(
        created: Timestamp.now(),
        type: StoryType.image,
        text: imageWithCaption.first.caption,
        imageUrl: imageWithCaption.first.imagePath,
        videoUrl: "",
        duration: duration.toInt(),
        react: {},
        storySeen: [],
      ),
    );
    await _firestore.storiesCollection.doc(Getters.getCurrentUserUid()).set(
      currentUser
          .copyWith(
        stories: userStory,
      )
          .toMap(),
      SetOptions(merge: true),
    );
    return right(unit);
  }

  @override
  Future<Either<StoriesFailure, double>> createVideoStatus(
      StoriesModel currentUser,
      String text,
      String path,
      double duration,
      // Color statusColor,
      ) async{
    File file = File(path);

    Uint8List? uint8list = await VideoThumbnail.thumbnailData(
      video: path,
      imageFormat: ImageFormat.JPEG,
      maxWidth: 50, // specify the width of the thumbnail, let the height auto-scaled to keep the source aspect ratio
      quality: 30,
    );

    String? thumbnailBase64 = base64.encode(uint8list!);

    final TaskSnapshot storageSnap = await _storageReference
        .statusPicturesStorageCollection
        .child("${Getters.getCurrentUserUid()}/${DateTime.now()}")
        .putFile(file);


    double uploadProgress = storageSnap.bytesTransferred/storageSnap.totalBytes;
    final String uploadUrl = await storageSnap.ref.getDownloadURL();
    final List<StoryModel> stories = currentUser.stories;
    stories.add(
      StoryModel(
        created: Timestamp.now(),
        type: StoryType.video,
        text: text,
        imageUrl: "",
        videoUrl: uploadUrl,
        react: {},
        storySeen: [],
        videoBase64Thumbnail: thumbnailBase64,
        duration: duration.toInt(),
      ),
    );

    await _firestore.storiesCollection.doc(Getters.getCurrentUserUid()).set(
      currentUser
          .copyWith(
        stories: stories,
      )
          .toMap(),
      SetOptions(merge: true),
    );
    // }
    return right(uploadProgress);
    throw UnimplementedError();
  }
}
