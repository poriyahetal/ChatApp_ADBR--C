// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_template/domain/broadcasts/broadcast_failures.dart';
import 'package:flutter_template/domain/broadcasts/broadcast_model.dart';
import 'package:flutter_template/domain/broadcasts/i_broadcast_facade.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'broadcast_bloc.freezed.dart';
part 'broadcast_event.dart';
part 'broadcast_state.dart';

@injectable
class BroadcastBloc extends Bloc<BroadcastEvent, BroadcastState> {
  BroadcastBloc(this._broadcastFacade) : super(BroadcastState.initial());

  final IBroadcastFacade _broadcastFacade;
  @override
  Stream<BroadcastState> mapEventToState(
    BroadcastEvent event,
  ) async* {
    yield* event.map(
      createBroadcast: (e) async* {
        yield state.copyWith(createBroadcastFailureOrSuccessOption: none());
        final BroadcastModel broadcast = BroadcastModel(
          recipients: state.recipients,
          created: Timestamp.now(),
          name: state.broadcastName,
          user: e.sender,
        );
        final opt = await _broadcastFacade.createBroadcast(broadcast);
        yield opt.fold(
          (failure) => state.copyWith(
            createBroadcastFailureOrSuccessOption: some(left(failure)),
          ),
          (success) => state.copyWith(
            recipients: [],
            broadcastName: '',
            createBroadcastFailureOrSuccessOption: some(right(unit)),
          ),
        );
      },
      sendMessage: (e) async* {},
      setBroadcastRecipients: (e) async* {
        yield state.copyWith(
          recipients: e.recipients,
          createBroadcastFailureOrSuccessOption: none(),
        );
      },
      setBroadcastName: (e) async* {
        yield state.copyWith(
          broadcastName: e.name,
          createBroadcastFailureOrSuccessOption: none(),
        );
      },
    );
  }
}
