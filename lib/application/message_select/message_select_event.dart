part of 'message_select_bloc.dart';

@freezed
class MessageSelectEvent with _$MessageSelectEvent {
  factory MessageSelectEvent.enableSelectionBar({
    required bool isSelectionBar,
  }) = EnableSelectionBar;

  factory MessageSelectEvent.enableReplay({
    required bool isReplying,
  }) = EnableReplay;

  factory MessageSelectEvent.changeSelection({
    required Map<int, MessageSelectModel> chat,
  }) = ChangeSelection;

  factory MessageSelectEvent.replayMessage({
    required MessageSelectModel message,
  }) = ReplayMessage;

  factory MessageSelectEvent.removeSelection({
    required int index,
  }) = RemoveSelection;

  factory MessageSelectEvent.changeSelectionId({
    required Map<int, String> ids,
  }) = ChangeSelectionId;

  factory MessageSelectEvent.disableSelection({
    required bool enable,
  }) = DisableSelection;

  factory MessageSelectEvent.hideSelectionBar({
    required bool isSelectionBar,
  }) = HideSelectionBar;

  factory MessageSelectEvent.enableSearchBar({
    required bool isSearch,
  }) = EnableSearchBar;

  factory MessageSelectEvent.changeSearchTextVal({
    required String searchText,
  }) = ChangeSearchTextVal;
  factory MessageSelectEvent.editSelectedMessage({
    required bool isEditing,
  }) = EditSelectedMessage;
}
