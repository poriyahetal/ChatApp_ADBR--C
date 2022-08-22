part of 'broadcast_bloc.dart';

@freezed
class BroadcastState with _$BroadcastState {
  const factory BroadcastState({
    required List<KahoChatUser> recipients,
    required String broadcastName,
    required Option<Either<BroadcastFailure, Unit>>
        createBroadcastFailureOrSuccessOption,
  }) = _BroadcastState;
  factory BroadcastState.initial() => BroadcastState(
        recipients: [],
        broadcastName: '',
        createBroadcastFailureOrSuccessOption: none(),
      );
}
