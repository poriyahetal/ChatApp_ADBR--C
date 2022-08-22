// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_template/domain/core/image_with_caption_model.dart';
import 'package:flutter_template/domain/stories/i_stories_facade.dart';
import 'package:flutter_template/domain/stories/stories_failures.dart';
import 'package:flutter_template/domain/stories/stories_model.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'dart:io';

part 'stories_bloc.freezed.dart';
part 'stories_event.dart';
part 'stories_state.dart';

@injectable
class StoriesBloc extends Bloc<StoriesEvent, StoriesState> {
  StoriesBloc(this._storiesFacade) : super(StoriesState.initial());
  final IStoriesFacade _storiesFacade;

  @override
  Stream<StoriesState> mapEventToState(
    StoriesEvent event,
  ) async* {
    yield* event.map(
      createTextStatus: (e) async* {
        yield state.copyWith(
          createStoryFailureOrSuccessOption: none(),
        );
        final opt = await _storiesFacade.createTextStatus(
          e.currentUser,
          e.text,
          e.color,
        );
        yield opt.fold(
          (failure) => state.copyWith(
            createStoryFailureOrSuccessOption: some(left(failure)),
          ),
          (success) => state.copyWith(
            createStoryFailureOrSuccessOption: some(right(unit)),
          ),
        );
      },
        createPaintStatus: (e) async* {
        yield state.copyWith(
          createStoryFailureOrSuccessOption: none(),
        );
        final otp = await _storiesFacade.createPaintStatus(e.currentUser, e.imageFile);
        yield otp.fold(
              (failure) => state.copyWith(
            createStoryFailureOrSuccessOption: some(left(failure)),
          ),
              (success) => state.copyWith(
            createStoryFailureOrSuccessOption: some(right(unit)),
          ),
        );
        },
      createImageStatus: (e) async* {
        yield state.copyWith(
          createStoryFailureOrSuccessOption: none(),
        );
        final opt = await _storiesFacade.createImageStatus(
          e.currentUser,
          e.imageWithCaption,
        );
        yield opt.fold(
          (failure) => state.copyWith(
            createStoryFailureOrSuccessOption: some(left(failure)),
          ),
          (success) => state.copyWith(
            createStoryFailureOrSuccessOption: some(right(unit)),
          ),
        );
      },
        addImageCaption: (e) async*{
        yield state.copyWith(
          addedImageCaption: e.caption,
          addScreenshotImage: true,
        );
        },
        completeScreenshot: (e) async*{
        yield state.copyWith(
          addScreenshotImage: false,
        );
        },
        createGifStatus: (e) async*{
        yield state.copyWith(
          createStoryFailureOrSuccessOption: none()
        );
        final otp = await _storiesFacade.createGifStatus(e.currentUser, e.imageWithCaption, e.duration);
        yield otp.fold((failure) => state.copyWith(
          createStoryFailureOrSuccessOption: some(left(failure)),
        ), (success) => state.copyWith(
          createStoryFailureOrSuccessOption: some(right(unit)),
        ));
        },
        createVideoStatus: (e) async*{
        yield state.copyWith(
          createStoryFailureOrSuccessOption: none(),
          uploadProgress: 0.1
        );
        final opt = await _storiesFacade.createVideoStatus(e.currentuser, e.text, e.path, e.duration);
        yield opt.fold((failure) => state.copyWith(
          createStoryFailureOrSuccessOption: some(left(failure)),
        ), (success) => state.copyWith(
          uploadProgress: success,
          createStoryFailureOrSuccessOption: some(right(unit)),
        ));
        },

        storySeenBy: (e) async* {
        yield state.copyWith(
          createStoryFailureOrSuccessOption: none(),
        );
        final otp = await _storiesFacade.storySeenBy(e.currentUser, e.index, e.myUser);
        yield otp.fold((failure) => state.copyWith(
          // createStoryFailureOrSuccessOption: some(left(failure)),
        ), (success) => state.copyWith(
          // createStoryFailureOrSuccessOption: some(right(unit)),
        ));
        },

        reactOnStory: (e) async* {
        yield state.copyWith(
          createStoryFailureOrSuccessOption: none(),
        );
        final otp = await _storiesFacade.reactOnStory(e.currentUser, e.index, e.myUser, e.reaction);
        yield otp.fold((failure) => state.copyWith(
          // createStoryFailureOrSuccessOption: some(left(failure)),
        ), (success) => state.copyWith(
          // createStoryFailureOrSuccessOption: some(right(unit)),
        ));
        },

        getCurrentUserStory: (e) async*{
          yield state.copyWith(
            createStoryFailureOrSuccessOption: none(),
            myStories: StoriesModel.empty(),
          );
          final opt = await _storiesFacade.getCurrentUserStory();
          yield opt.fold((l) => state.copyWith(
            myStories: StoriesModel.empty(),
              createStoryFailureOrSuccessOption: none()
          ), (userStory) => state.copyWith(
            myStories: userStory,
            createStoryFailureOrSuccessOption: none()
          ));
        },

        createStories: (e) async* {
          yield state.copyWith(
              createStoryFailureOrSuccessOption: none()
          );
          final opt = await _storiesFacade.createStories(e.stories);
          yield opt.fold((failure) => state.copyWith(
            // createStoryFailureOrSuccessOption: some(left(failure)),
          ), (currentUserStory) => state.copyWith(
            myStories: currentUserStory,
            // createStoryFailureOrSuccessOption: some(right(unit)),
          ));
        }



    );
  }
}
