part of 'list_and_grid_bloc.dart';

@freezed
class ListAndGridState with _$ListAndGridState {
  factory ListAndGridState({
    required bool isAppSelectionbarEnable,
    required List<int> selectedIndexList,
    required bool selectionMode,
  }) = _ListAndGrid;
  factory ListAndGridState.initial() => ListAndGridState(
        isAppSelectionbarEnable: false,
        selectedIndexList: [],
        selectionMode: false,
      );
}
