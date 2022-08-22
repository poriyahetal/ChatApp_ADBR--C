// ignore_for_file: depend_on_referenced_packages, unused_local_variable, require_trailing_commas

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_template/domain/chats/message_model.dart';
import 'package:flutter_template/domain/chats/message_select_model.dart';
import 'package:flutter_template/domain/core/image_with_caption_model.dart';
import 'package:flutter_template/domain/groups/group_chat_model.dart';
import 'package:flutter_template/domain/groups/group_failures.dart';
import 'package:flutter_template/domain/groups/i_group_facade.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'groups_bloc.freezed.dart';
part 'groups_event.dart';
part 'groups_state.dart';

@injectable
class GroupsBloc extends Bloc<GroupsEvent, GroupsState> {
  GroupsBloc(this._groupFacade) : super(GroupsState.initial());
  final IGroupFacade _groupFacade;

  @override
  Stream<GroupsState> mapEventToState(
    GroupsEvent event,
  ) async* {
    yield* event.map(
      sendFile: (e) async* {
        final opt = _groupFacade.sendFile(e.groupId, e.myUser, e.filePath);
      },
      setReadUnread: (e) async* {
        final opt =
            _groupFacade.setReadUnread(e.groupUid, e.myUser, e.messageID);
      },
      makeAdmins: (e) async* {
        final oldAdminList = e.group.otherAdmins;
        final oldUserList = e.group.userDetails;
        oldUserList.removeWhere((element) => element.uid == e.user.uid);
        oldAdminList.add(e.user);
        state.group.copyWith(
          otherAdmins: oldAdminList,
          userDetails: oldUserList,
        );
        final opt =
            _groupFacade.updateAdmins(e.groupId, oldAdminList, oldUserList);
      },
      removeAdmins: (e) async* {
        final oldAdminList = e.group.otherAdmins;
        final oldUserList = e.group.userDetails;
        oldAdminList.removeWhere((element) => element.uid == e.user.uid);
        oldUserList.add(e.user);
        state.group.copyWith(
          otherAdmins: oldAdminList,
          userDetails: oldUserList,
        );
        final opt =
            _groupFacade.updateAdmins(e.groupId, oldAdminList, oldUserList);
      },
      setGroupName: (e) async* {
        state.group.copyWith(
          name: e.name,
        );
        final opt = _groupFacade.setGroupName(e.groupId, e.name);
      },
      updateProfilePicture: (e) async* {
        state.group.copyWith(
          groupImageUrl: e.url,
        );
      },
      setGroupImage: (e) async* {
        state.group.copyWith(
          groupImageUrl: e.url,
        );
        final opt = _groupFacade.setGroupImage(e.groupId, e.url);
      },
      setGroupDescription: (e) async* {
        state.group.copyWith(
          description: e.description,
        );
        final opt = _groupFacade.setGroupDescription(e.groupId, e.description);
      },
      setGroupMembers: (e) async* {
        yield state.copyWith(
          leaveGroupFailureOrSuccessOption: none(),
          members: e.members,
          createGroupFailureOrSuccessOption: none(),
          sendMessageFailureOrSuccessOption: none(),
        );
      },
      createGroup: (e) async* {
        yield state.copyWith(
          leaveGroupFailureOrSuccessOption: none(),
          createGroupFailureOrSuccessOption: none(),
          sendMessageFailureOrSuccessOption: none(),
        );
        final opt = await _groupFacade.createGroup(e.group);
        yield opt.fold(
          (failure) => state.copyWith(
            leaveGroupFailureOrSuccessOption: none(),
            createGroupFailureOrSuccessOption: some(left(failure)),
            sendMessageFailureOrSuccessOption: none(),
          ),
          (success) => state.copyWith(
            leaveGroupFailureOrSuccessOption: none(),
            groupName: "",
            groupDescription: "",
            members: [],
            createGroupFailureOrSuccessOption: some(right(unit)),
            sendMessageFailureOrSuccessOption: none(),
          ),
        );
      },
      sendTextMessage: (e) async* {
        yield state.copyWith(
          leaveGroupFailureOrSuccessOption: none(),
          createGroupFailureOrSuccessOption: none(),
          sendMessageFailureOrSuccessOption: none(),
        );
        final opt = await _groupFacade.sendTextMessage(
            e.groupUid, e.groupName, e.myUser, e.message);
        yield opt.fold(
          (failure) => state.copyWith(
            leaveGroupFailureOrSuccessOption: none(),
            createGroupFailureOrSuccessOption: none(),
            sendMessageFailureOrSuccessOption: some(left(failure)),
          ),
          (success) => state.copyWith(
            leaveGroupFailureOrSuccessOption: none(),
            createGroupFailureOrSuccessOption: none(),
            sendMessageFailureOrSuccessOption: some(right(unit)),
          ),
        );
      },
      markMessageAsSeen: (e) async* {
        final opt = _groupFacade.markMessageAsSeen(
          e.myUser,
          e.groupUid,
          e.messageId,
        );
      },

      sendGroupNotification: (e) async* {
        yield state.copyWith(
          leaveGroupFailureOrSuccessOption: none(),
          createGroupFailureOrSuccessOption: none(),
          sendMessageFailureOrSuccessOption: none(),
        );
        final opt = await _groupFacade.sendGroupNotification(
            e.groupUid, e.groupName, e.myUser, e.message);
        yield opt.fold(
              (failure) => state.copyWith(
            leaveGroupFailureOrSuccessOption: none(),
            createGroupFailureOrSuccessOption: none(),
            sendMessageFailureOrSuccessOption: some(left(failure)),
          ),
              (success) => state.copyWith(
            leaveGroupFailureOrSuccessOption: none(),
            createGroupFailureOrSuccessOption: none(),
            sendMessageFailureOrSuccessOption: some(right(unit)),
          ),
        );
      },
      forwardMessage: (value) async* {
        await _groupFacade.sendForwardMessage(
            value.myUser, value.groupUid, value.message);
      },
      replayMessage: (value) async* {
        await _groupFacade.sendReplayMessage(
            value.myUser, value.groupUid, value.message, value.text);
      },
      sendImageMessage: (e) async* {
        yield state.copyWith(
          leaveGroupFailureOrSuccessOption: none(),
          createGroupFailureOrSuccessOption: none(),
          sendMessageFailureOrSuccessOption: none(),
        );
        final opt = await _groupFacade.sendImageMessage(
          e.groupUid,
          e.myUser,
          e.imageWithCaption,
        );
        yield opt.fold(
          (failure) => state.copyWith(
            leaveGroupFailureOrSuccessOption: none(),
            createGroupFailureOrSuccessOption: none(),
            sendMessageFailureOrSuccessOption: some(left(failure)),
          ),
          (success) => state.copyWith(
            leaveGroupFailureOrSuccessOption: none(),
            createGroupFailureOrSuccessOption: none(),
            sendMessageFailureOrSuccessOption: some(right(unit)),
          ),
        );
      },
      sendGifMessage: (e) async* {
        yield state.copyWith(
          leaveGroupFailureOrSuccessOption: none(),
          createGroupFailureOrSuccessOption: none(),
          sendMessageFailureOrSuccessOption: none(),
        );
        final opt = await _groupFacade.sendGifMessage(
          e.groupUid,
          e.myUser,
          e.url,
        );
        yield opt.fold(
              (failure) => state.copyWith(
            leaveGroupFailureOrSuccessOption: none(),
            createGroupFailureOrSuccessOption: none(),
            sendMessageFailureOrSuccessOption: some(left(failure)),
          ),
              (success) => state.copyWith(
            leaveGroupFailureOrSuccessOption: none(),
            createGroupFailureOrSuccessOption: none(),
            sendMessageFailureOrSuccessOption: some(right(unit)),
          ),
        );
      },
      sendVideoMessage: (e) async* {
        yield state.copyWith(
          leaveGroupFailureOrSuccessOption: none(),
          createGroupFailureOrSuccessOption: none(),
          sendMessageFailureOrSuccessOption: none(),
        );
        final opt = await _groupFacade.sendVideoMessage(
          e.groupUid,
          e.myUser,
          e.imageWithCaption,
        );
        yield opt.fold(
          (failure) => state.copyWith(
            leaveGroupFailureOrSuccessOption: none(),
            createGroupFailureOrSuccessOption: none(),
            sendMessageFailureOrSuccessOption: some(left(failure)),
          ),
          (success) => state.copyWith(
            leaveGroupFailureOrSuccessOption: none(),
            createGroupFailureOrSuccessOption: none(),
            sendMessageFailureOrSuccessOption: some(right(unit)),
          ),
        );
      },
      leaveGroup: (e) async* {
        yield state.copyWith(
          leaveGroupFailureOrSuccessOption: none(),
          createGroupFailureOrSuccessOption: none(),
          sendMessageFailureOrSuccessOption: none(),
        );
        final opt = await _groupFacade.leaveGroup(e.groupId, e.group);
        yield opt.fold(
          (failure) => state.copyWith(
            leaveGroupFailureOrSuccessOption: some(left(failure)),
            createGroupFailureOrSuccessOption: none(),
            sendMessageFailureOrSuccessOption: none(),
          ),
          (success) => state.copyWith(
            leaveGroupFailureOrSuccessOption: some(right(unit)),
            createGroupFailureOrSuccessOption: none(),
            sendMessageFailureOrSuccessOption: none(),
          ),
        );
      },
      removeMember: (e) async* {
        yield state.copyWith(
          leaveGroupFailureOrSuccessOption: none(),
          createGroupFailureOrSuccessOption: none(),
          sendMessageFailureOrSuccessOption: none(),
        );
        final opt = await _groupFacade.removeMember(e.groupId,e.userId, e.group);
        yield opt.fold(
          (failure) => state.copyWith(
            leaveGroupFailureOrSuccessOption: some(left(failure)),
            createGroupFailureOrSuccessOption: none(),
            sendMessageFailureOrSuccessOption: none(),
          ),
          (success) => state.copyWith(
            leaveGroupFailureOrSuccessOption: some(right(unit)),
            createGroupFailureOrSuccessOption: none(),
            sendMessageFailureOrSuccessOption: none(),
          ),
        );
      },
      setGroup: (e) async* {
        yield state.copyWith(
          leaveGroupFailureOrSuccessOption: none(),
          group: e.groupChatRoomModel,
          groupDescription: e.groupChatRoomModel.description,
          groupName: e.groupChatRoomModel.name,
          setGroupPicture: e.groupChatRoomModel.groupImageUrl,
          createGroupFailureOrSuccessOption: none(),
          sendMessageFailureOrSuccessOption: none(),
        );
      },
      addGroupMembers: (e) async* {
        final _members = e.members;
        state.group.copyWith(
            users: _members.map((e) => e.uid).toList(), userDetails: _members);
        final opt = await _groupFacade.addGroupMembers(e.members, e.groupId);
        yield opt.fold(
          (failure) => state.copyWith(
            leaveGroupFailureOrSuccessOption: none(),
            createGroupFailureOrSuccessOption: some(left(failure)),
            sendMessageFailureOrSuccessOption: none(),
          ),
          (success) => state.copyWith(
            leaveGroupFailureOrSuccessOption: none(),
            members: e.members,
            createGroupFailureOrSuccessOption: some(right(unit)),
            sendMessageFailureOrSuccessOption: none(),
          ),
        );
      },
      sendContactMessage: (e) async* {
        yield state.copyWith(
          leaveGroupFailureOrSuccessOption: none(),
          createGroupFailureOrSuccessOption: none(),
          sendMessageFailureOrSuccessOption: none(),
        );
        final opt = await _groupFacade.sendContactMessage(
            e.groupUid, e.myUser, e.contact);
        yield opt.fold(
          (failure) => state.copyWith(
            leaveGroupFailureOrSuccessOption: none(),
            createGroupFailureOrSuccessOption: none(),
            sendMessageFailureOrSuccessOption: some(left(failure)),
          ),
          (success) => state.copyWith(
            leaveGroupFailureOrSuccessOption: none(),
            createGroupFailureOrSuccessOption: none(),
            sendMessageFailureOrSuccessOption: some(right(unit)),
          ),
        );
      },
      sendMessageOnlyAdmin: (_SendMessageOnlyAdmin value) async* {
        state.group.copyWith(
          sendMessageOnlyAdmin: value.setValue as bool,
        );
        final opt = await _groupFacade.sendMessageOnlyAdmin(
            value.groupId, value.setValue);
      },
      addParticipantsOnlyAdmin: (_AddParticipantsOnlyAdmin value) async* {
        state.group.copyWith(
          addParticipantsOnlyAdmin: value.setValue as bool,
        );
        final opt = await _groupFacade.addParticipantsOnlyAdmin(
            value.groupId, value.setValue);
      },
      editGroupInfoOnlyAdmin: (_EditGroupInfoOnlyAdmin value) async* {
        state.group.copyWith(
          editGroupInfoOnlyAdmin: value.setValue as bool,
        );
        final opt = await _groupFacade.editGroupInfoOnlyAdmin(
            value.groupId, value.setValue);
      },
      deleteMessageEveryone: (DeleteMessageEveryone value) async* {
        final opt = await _groupFacade.deleteMessageEveryone(
            value.message, value.groupUid);
      },
      sendAudioFileMessage: (_SendAudioFileMessage e) async* {
        final opt = await _groupFacade.sendAudioFile(
          e.groupUid,
          e.myUser,
          e.audioPath,
        );
      },
      sendAudioMessage: (_SendAudioMessage e) async* {
        final opt = await _groupFacade.sendAudioMessage(
          e.groupUid,
          e.myUser,
          e.audioPath,
        );
      },
      deleteMessage: (DeleteMessage e) async* {
        final opt = _groupFacade.deleteMessage(e.groupUid, e.message);
      },
      clearChat: (_ClearChat e) async* {
        final opt = _groupFacade.clearChat(e.groupId);
      }, 
      readMessages: (ReadMessages value) async*{ 
        final opt = _groupFacade.readMessages(value.groupId);
      },
      deliverMessagesListner: (DeliverMessagesListner value) async*{ 
        final opt = _groupFacade.deliverMessagesListner(value.groupId);
      },
    );
  }
}
