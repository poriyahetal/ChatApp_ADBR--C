part of 'message_select_bloc.dart';

@freezed
class MessageSelectState with _$MessageSelectState {
  factory MessageSelectState({
    required bool isAppSelectionbarEnable,
    required Map<int, MessageSelectModel> selectedIndexList,
    required Map<int, MessageSelectModel> selectedFilesIndexList,
    required Map<int, MessageSelectModel> selectedAudiosIndexList,
    required Map<int, MessageSelectModel> selectedLinksIndexList,
    required Map<int, String> selectedIDList,
    required bool selectionMode,
    required bool isSearching,
    required bool isReplying,
    required bool isEditingMessage,
    required String searchTextVal,
    required MessageSelectModel? replayMessageSelect,
  }) = _MessageSelect;
  factory MessageSelectState.initial() => MessageSelectState(
        isAppSelectionbarEnable: false,
        selectedIndexList: {},
        selectedFilesIndexList: {},
        selectedAudiosIndexList: {},
        selectedLinksIndexList: {},
        selectionMode: false,
        selectedIDList: {},
        isSearching: false,
        isReplying: false,
        searchTextVal: "",
        isEditingMessage: false,
        replayMessageSelect: null,
      );
}
