part of 'chats_bloc.dart';

@freezed
class ChatsState with _$ChatsState {
  factory ChatsState({
    required bool isUploading,
    required String fileName,
    required bool isNewPeer,
    required InviteModel inviteModel,
  }) = _Chats;
  factory ChatsState.initial() => ChatsState(
        isUploading: false,
        fileName: '',
        isNewPeer: false,
        inviteModel: InviteModel(
          sender: KahoChatUser.demo(),
          receiverUid: "",
          accepted: false,
          timeOfSending: Timestamp.now(),
          answered: true,
        ),
      );
}
//   factory SQLiteState({
//     required String filePath,
//     required Option<Either<SQLiteFailure, String>>
//         getFileLocationFailureOrSuccessOption,
//   }) = _SQLite;

//   factory SQLiteState.initial() => SQLiteState(
//         filePath: "",
//         getFileLocationFailureOrSuccessOption: none(),
//       );
// }
