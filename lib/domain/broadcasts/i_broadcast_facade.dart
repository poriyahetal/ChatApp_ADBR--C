import 'package:dartz/dartz.dart';
import 'package:flutter_template/domain/broadcasts/broadcast_failures.dart';
import 'package:flutter_template/domain/broadcasts/broadcast_model.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';

abstract class IBroadcastFacade {
  Future<Either<BroadcastFailure, Unit>> createBroadcast(
    BroadcastModel broadcast,
  );
  Future<Either<BroadcastFailure, Unit>> sendBroadcastMessage(
    List<KahoChatUser> recipients,
    KahoChatUser myUser,
    String messageText,
  );
}
