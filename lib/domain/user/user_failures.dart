import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_failures.freezed.dart';

@freezed
class UserFailure with _$UserFailure {
  const factory UserFailure.unableToFetchUser() = UnableToFetchUser;
  const factory UserFailure.createUserFailure() = CreateUserFailure;
  const factory UserFailure.createLastActive() = CreateLastActive;
  const factory UserFailure.userNotFound() = UserNotFound;
  const factory UserFailure.customError() = CustomError;
}
