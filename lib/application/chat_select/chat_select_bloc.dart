import 'package:bloc/bloc.dart';
import 'package:flutter_template/application/groups/group_select_model.dart';
import 'package:flutter_template/domain/chats/chat_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'chat_select_event.dart';
part 'chat_select_state.dart';
part 'chat_select_bloc.freezed.dart';

@injectable
class ChatSelectBloc extends Bloc<ChatSelectEvent, ChatSelectState> {
  ChatSelectBloc() : super(ChatSelectState.initial());
  @override
  Stream<ChatSelectState> mapEventToState(
    ChatSelectEvent event,
  ) async* {
    yield* event.map(
      enableSelectionBar: (e) async* {
        yield state.copyWith(
          isAppSelectionbarEnable: e.isSelectionBar,
        );
        state.selectedIndexList.clear();
        state.selectedIDList.clear();
      },
      changeSelection: (e) async* {
        yield state.copyWith(
          selectedIndexList: e.chat,
        );
      },
      disableSelection: (e) async* {
        yield state.copyWith(selectionMode: e.enable);
        state.selectedIndexList.clear();
        state.selectedIDList.clear();
      },
      changeSelectionId: (e) async*{
        yield state.copyWith(
          selectedIDList: e.ids,
        );
      },
      showFabAction: (e) async*{
        yield state.copyWith(
          showFab: e.showFabVal,
        );
      },
      groupSelection: (e) async*{
        yield state.copyWith(selectGroup: e.group_select);
        state.selectedIndexList.clear();
        state.selectedIDList.clear();
      },
      selectGroup: (e) async*{
        yield state.copyWith(
          selectedGroups: e.group,
        );
      },
    );
  }
}
