import 'package:flutter/material.dart';
import 'package:qr_code/Feature/Home/presentation/views/widget/switch_camera.dart';
import '../../../../../Core/utils/colors.dart';
import 'image_from_gallery.dart';
import 'toggle_flash.dart';

class CameraControlBar extends StatelessWidget {
  const CameraControlBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          decoration: _boxDecoration,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ImageFromGallery(),
              ToggleFlash(),
              SwitchCamera(),
            ],
          ),
        ),
      ),
    );
  }
}

const BoxDecoration _boxDecoration = BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(6)),
  color: AppColor.kShadowBlack,
);
