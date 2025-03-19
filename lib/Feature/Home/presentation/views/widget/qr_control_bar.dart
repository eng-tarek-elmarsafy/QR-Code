import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_code/Core/utils/assets.dart';
import 'package:qr_code/Feature/Home/presentation/manager/camera_controller_cubit/camera_controller_cubit.dart';
import 'generate_and_history.dart';

class QRControlBar extends StatelessWidget {
  const QRControlBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = context.read<CameraControllerCubit>();
    bool isActive = true;
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        const GenerateAndHistory(),
        Positioned(
          top: -57,
          child: GestureDetector(
            onTap: () {
              if (isActive) {
                controller.cameraStop();
                isActive = !isActive;
              } else {
                controller.cameraStart();
                isActive = !isActive;
              }
            },
            child: SvgPicture.asset(
              AppAssets.buttomQR,
            ),
          ),
        ),
      ],
    );
  }
}
