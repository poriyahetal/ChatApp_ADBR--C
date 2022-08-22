part of 'list_and_grid_bloc.dart';

@freezed
class ListAndGridEvent with _$ListAndGridEvent {
  factory ListAndGridEvent.enableSelectionBar({
    required bool isSelectionBar,
  }) = EnableSelectionBar;
  factory ListAndGridEvent.changeSelection({
    required bool enable,
    required int index,
  }) = ChangeSelection;
  factory ListAndGridEvent.disableSelection({
    required bool enable,
  }) = DisableSelection;
}
