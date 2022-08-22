import 'package:bloc/bloc.dart';
import 'package:flutter_template/domain/chats/chat_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'list_and_grid_event.dart';
part 'list_and_grid_state.dart';
part 'list_and_grid_bloc.freezed.dart';

@injectable
class ListAndGridBloc extends Bloc<ListAndGridEvent, ListAndGridState> {
  ListAndGridBloc() : super(ListAndGridState.initial());
  @override
  Stream<ListAndGridState> mapEventToState(
    ListAndGridEvent event,
  ) async* {
    yield* event.map(
      enableSelectionBar: (e) async* {
        yield state.copyWith(
          isAppSelectionbarEnable: e.isSelectionBar,
        );
        state.selectedIndexList.clear();
      },
      changeSelection: (e) async* {
        yield state.copyWith(
          selectionMode: e.enable,
        );
      },
      disableSelection: (e) async* {
        yield state.copyWith(selectionMode: e.enable);
        state.selectedIndexList.clear();
      },
    );
  }
}
