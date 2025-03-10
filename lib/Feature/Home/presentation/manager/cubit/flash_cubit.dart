import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

part 'flash_state.dart';

class FlashCubit extends Cubit<FlashState> {
  FlashCubit() : super(FlashInitial());
  bool flashStatus = false;

  toggle(MobileScannerController controller) {
    if (flashStatus == false) {
      flashStatus = true;
      controller.toggleTorch();
      emit(FlashIOff());
    } else {
      flashStatus = false;
      controller.toggleTorch();
      emit(FlashOn());
    }
  }
}
