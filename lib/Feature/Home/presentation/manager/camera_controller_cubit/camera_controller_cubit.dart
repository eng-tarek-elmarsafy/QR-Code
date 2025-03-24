import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

part 'camera_controller_state.dart';

class CameraControllerCubit extends Cubit<CameraControllerState> {
  CameraControllerCubit(this.controller) : super(CameraControllerInitial());

  final MobileScannerController controller;

  cameraStart() {
    controller.start();
  }

  cameraStop() {
    controller.stop();
  }

  toggleFlash() {
    controller.toggleTorch();
  }

  camreaSwitch() {
    controller.switchCamera();
  }

  analyzeImageGallery(String path) {
    controller.analyzeImage(path);
  }

  cameraZoom(double zoom) {
    controller.setZoomScale(zoom);
  }

  cameraDispose() {
    controller.dispose();
  }
}
