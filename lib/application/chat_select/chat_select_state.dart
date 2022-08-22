part of 'chat_select_bloc.dart';

@freezed
class ChatSelectState with _$ChatSelectState {
  factory ChatSelectState({
    required bool isAppSelectionbarEnable,
    required Map<int,ChatModel> selectedIndexList,
    required Map<int,String> selectedIDList,
    required Map<int,String> selectedGroupIDList,
    required Map<int,GroupSelectModel> selectedGroups,
    required bool selectionMode,
    required bool selectGroup,
    required bool showFab,
  }) = _ChatSelect;
  factory ChatSelectState.initial() => ChatSelectState(
        isAppSelectionbarEnable: false,
        selectedIndexList: {},
        selectionMode: false,
        selectedIDList: {},
        selectedGroupIDList:{},
        selectedGroups: {},
        showFab: true,
        selectGroup: false,
      );
}
