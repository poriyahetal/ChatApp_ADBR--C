import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_template/domain/calls/call_log_failure.dart';
import 'package:flutter_template/domain/calls/call_model.dart';
import 'package:flutter_template/domain/calls/i_call_log_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'call_log_bloc.freezed.dart';
part 'call_log_event.dart';
part 'call_log_state.dart';

@injectable
class CallLogBloc extends Bloc<CallLogEvent, CallLogState> {
  ICallLogFacade _iCallLogFacade;
  CallLogBloc(
    this._iCallLogFacade,
  ) : super(CallLogState.initial());
  @override
  Stream<CallLogState> mapEventToState(
    CallLogEvent event,
  ) async* {
    yield* event.map(
      select: (e) async* {
        state.calls.add(e.callLogId);
        state.callLogs.addAll(e.callLogs);
        print(state.callLogs.length);
        print("printing selected call list id's ${e.callLogs.last}");
        yield state.copyWith(length: state.calls.length);
      },
      unSelect: (e) async* {
        for (final val in e.callLogs) {
          state.callLogs.removeWhere((element) => val.callId == element.callId);
        }
        print(state.callLogs.length);
        state.calls.remove(e.callLogId);
        yield state.copyWith(length: state.calls.length);
      },
      deleteCallLogs: (e) async* {
        final delete = await _iCallLogFacade.deleteCallLog(state.callLogs);
        yield delete.fold((error) {
          Println("Error calllog");
          return state.copyWith(deletionSuccessorFailure: some(error));
        }, (success) {
          Println("CallLOg deleted");
          return CallLogState.initial();
        });
      },
      deSelectAll: (_) async* {
        yield state.copyWith(
          calls: [],
          length: 0,
          callLogs: [],
          deletionSuccessorFailure: none(),
        );
      },
      deleteOneCallLogs: (e) async* {
        final delete = await _iCallLogFacade.deleteCallLog(e.callLogs);
        yield delete.fold((error) {
          Println("Error calllog");
          return state.copyWith(deletionSuccessorFailure: some(error));
        }, (success) {
          Println("CallLOg deleted");
          return CallLogState.initial();
        });
      },
    );
  }
}
