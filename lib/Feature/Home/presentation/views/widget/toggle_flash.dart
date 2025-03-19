import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qr_code/Feature/Home/presentation/manager/camera_controller_cubit/camera_controller_cubit.dart';

class ToggleFlash extends StatelessWidget {
  const ToggleFlash({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = context.read<CameraControllerCubit>();
    return GestureDetector(
      onTap: () {
        controller.toggleFlash();
      },
      child: ValueListenableBuilder(
        valueListenable: controller.controller.torchState,
        builder: (context, state, child) {
          if (state == TorchState.off) {
            return Icon(
              Icons.flash_off,
              size: 30,
            );
          } else {
            return Icon(
              Icons.flash_on,
              size: 30,
            );
          }
        },
      ),
    );
  }
}
