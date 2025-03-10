import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import '../../../../../Core/utils/colors.dart';
import '../../manager/cubit/flash_cubit.dart';
import 'flash_toggle.dart';

class CameraControlBar extends StatelessWidget {
  final MobileScannerController controller;
  const CameraControlBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: AppColor.kShadowBlack,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.image,
                  size: 40,
                  color: Colors.white,
                ),
              ),
              BlocProvider(
                create: (context) => FlashCubit(),
                child: FlashToggle(
                  controller: controller,
                ),
              ),
              IconButton(
                onPressed: () {
                  controller.switchCamera();
                },
                icon: const Icon(
                  Icons.flip_camera_ios_outlined,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
