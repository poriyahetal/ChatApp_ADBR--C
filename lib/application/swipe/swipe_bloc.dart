import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'swipe_event.dart';
part 'swipe_state.dart';
part 'swipe_bloc.freezed.dart';

class SwipeBloc extends Bloc<SwipeEvent, SwipeState> {
  SwipeBloc() : super(_Initial()) {
    on<SwipeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
