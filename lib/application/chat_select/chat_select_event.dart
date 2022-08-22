part of 'chat_select_bloc.dart';

@freezed
class ChatSelectEvent with _$ChatSelectEvent {
  factory ChatSelectEvent.enableSelectionBar({
    required bool isSelectionBar,
  }) = EnableSelectionBar;
  factory ChatSelectEvent.changeSelection({
    required Map<int,ChatModel> chat,
  }) = ChangeSelection;
  factory ChatSelectEvent.selectGroup({
    required Map<int,GroupSelectModel> group,
  }) = SelectGroup;
  factory ChatSelectEvent.changeSelectionId({
    required Map<int,String> ids,
  }) = ChangeSelectionId;
  factory ChatSelectEvent.disableSelection({
    required bool enable,
  }) = DisableSelection;
  factory ChatSelectEvent.groupSelection({
    required bool group_select,
  }) = GroupSelection;
  factory ChatSelectEvent.showFabAction({
    required bool showFabVal,
  }) = ShowFabVal;
}
