import 'package:dartz/dartz.dart';
import 'package:flutter_template/domain/user/active_status_model.dart';
import 'package:flutter_template/domain/user/mute_notification.dart';
import 'package:flutter_template/domain/user/user_failures.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';

abstract class IUserFacade {
  Future<Either<UserFailure, KahoChatUser>> createOrUpdateUser(
    KahoChatUser user,
  );
  Future<Either<UserFailure, KahoChatUser>> fetchCurrentUser();
  Future<Either<UserFailure, List<KahoChatUser>>> searchUser({
    required String number,
  });
  Future<Either<UserFailure, Unit>> deleteAllChat({
    required bool alsoDeleteMedia,
  });
  Future<Either<UserFailure, LastActiveStatus>> createOrUpdateLastActiveStatus({
    required LastActiveStatus activeStatus,
  });
  Future<Either<UserFailure, LastActiveStatus>> fetchActiveStatus();
  Future<Either<UserFailure, MuteNotification>> createOrUpdateMuteUserNotification(
      {required MuteNotification mutedNotification});
  Future<Either<UserFailure, MuteNotification>> fetchMutedNotification();

}
