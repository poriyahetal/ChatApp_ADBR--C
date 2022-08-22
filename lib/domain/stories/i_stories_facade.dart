import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_template/domain/core/image_with_caption_model.dart';
import 'package:flutter_template/domain/stories/stories_failures.dart';
import 'package:flutter_template/domain/stories/stories_model.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

abstract class IStoriesFacade {
  Future<Either<StoriesFailure, Unit>> createTextStatus(
    StoriesModel currentUser,
    String text,
    Color statusColor,
  );

  Future<Either<StoriesFailure, Unit>> createPaintStatus(
      StoriesModel currentUser, File imageFile);

  Future<Either<StoriesFailure, Unit>> createImageStatus(
    StoriesModel currentUser,
    List<ImageWithCaptionModel> imageWithCaption,
  );

  Future<Either<StoriesFailure, Unit>> createGifStatus(StoriesModel currentUser,
      List<ImageWithCaptionModel> imageWithCaption, double duration);

  Future<Either<StoriesFailure, double>> createVideoStatus(
    StoriesModel currentUser,
    String text,
    String path,
    double duration,
    // Color statusColor,
  );

  Future<Either<StoriesFailure, Unit>> storySeenBy(
    StoriesModel currentUser,
    int index,
    KahoChatUser myUser,
  );

  Future<Either<StoriesFailure, Unit>> reactOnStory(
    StoriesModel currentUser,
    int index,
    KahoChatUser myUser,
      String reaction
  );

  Future<Either<StoriesFailure, StoriesModel>> createStories(
    StoriesModel user,
  );

  Future<Either<StoriesFailure, StoriesModel>> getCurrentUserStory();
}
