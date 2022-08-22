part of 'groups_bloc.dart';

@freezed
class GroupsState with _$GroupsState {
  const factory GroupsState({
    required String groupName,
    required String groupDescription,
    required List<KahoChatUser> members,
    required GroupChatRoomModel group,
    required Option<Either<GroupFailure, Unit>> createGroupFailureOrSuccessOption,
    required Option<Either<GroupFailure, Unit>> sendMessageFailureOrSuccessOption,
    required Option<Either<GroupFailure, Unit>> leaveGroupFailureOrSuccessOption,
    required String setGroupPicture,
  }) = _GroupsState;
  factory GroupsState.initial() => GroupsState(
        members: [],
        groupDescription: '',
        groupName: '',
        group: GroupChatRoomModel.demo(),
        createGroupFailureOrSuccessOption: none(),
        sendMessageFailureOrSuccessOption: none(),
        leaveGroupFailureOrSuccessOption: none(),
        setGroupPicture: "",
      );
}
