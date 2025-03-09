import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';

part 'flash_state.dart';

class FlashCubit extends Cubit<FlashState> {
  FlashCubit() : super(FlashInitial());
  bool flashStatus = false;

  toggle() {
    if (flashStatus == false) {
      flashStatus = true;
      emit(FlashIOff());
    } else {
      flashStatus = false;
      emit(FlashOn());
    }
  }
}
