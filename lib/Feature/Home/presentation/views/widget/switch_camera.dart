import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_code/Feature/Home/presentation/manager/camera_controller_cubit/camera_controller_cubit.dart';

class SwitchCamera extends StatelessWidget {
  const SwitchCamera({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = context.read<CameraControllerCubit>();
    return IconButton(
      onPressed: () {
        controller.camreaSwitch();
      },
      icon: const Icon(
        Icons.flip_camera_ios_outlined,
        size: 30,
        color: Colors.white,
      ),
    );
  }
}
