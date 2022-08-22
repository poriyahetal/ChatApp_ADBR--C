import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_template/domain/chats/message_model.dart';
import 'package:flutter_template/domain/chats/message_select_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'message_select_event.dart';
part 'message_select_state.dart';
part 'message_select_bloc.freezed.dart';

@injectable
class MessageSelectBloc extends Bloc<MessageSelectEvent, MessageSelectState> {
  MessageSelectBloc() : super(MessageSelectState.initial());
  @override
  Stream<MessageSelectState> mapEventToState(
    MessageSelectEvent event,
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
        var _messages = state.selectedIndexList;
        _messages.addAll(e.chat);
        yield state.copyWith(
          selectedIndexList: _messages,
        );
        print('selection:${state.selectedIndexList}');
      },
      replayMessage: (e) async* {
        yield state.copyWith(
          replayMessageSelect: e.message,
        );
      },
      disableSelection: (e) async* {
        yield state.copyWith(selectionMode: e.enable);
        state.selectedIndexList.clear();
        state.selectedIDList.clear();
      },
      changeSelectionId: (e) async* {
        yield state.copyWith(
          selectedIDList: e.ids,
        );
      },
      removeSelection: (e) async* {
        var _messages = state.selectedIndexList;
        _messages.remove(e.index);
        yield state.copyWith(
          selectedIndexList: _messages,
        );
      },
      hideSelectionBar: (e) async* {
        yield state.copyWith(isAppSelectionbarEnable: false);
      },
      enableSearchBar: (e) async* {
        yield state.copyWith(
          isSearching: e.isSearch,
        );
      },
      changeSearchTextVal: (e) async* {
        yield state.copyWith(
          searchTextVal: e.searchText,
        );
      },
      enableReplay: (e) async* {
        yield state.copyWith(
          isReplying: e.isReplying,
        );
        if(e.isReplying == false){
        state.copyWith(
          replayMessageSelect: null,
        );
        }
        state.selectedIndexList.clear();
        state.selectedIDList.clear();
      }, 
      editSelectedMessage: (EditSelectedMessage value) async*{ 
        state.copyWith(isEditingMessage: value.isEditing);
       },
    );
  }
}
