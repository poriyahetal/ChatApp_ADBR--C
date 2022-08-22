import 'package:freezed_annotation/freezed_annotation.dart';

part 'stories_failures.freezed.dart';

@freezed
class StoriesFailure with _$StoriesFailure {
  const factory StoriesFailure.customError(String error) = CustomError;
}
