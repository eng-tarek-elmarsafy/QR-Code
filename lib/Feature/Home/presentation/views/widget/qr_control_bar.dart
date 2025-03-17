import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qr_code/Core/utils/assets.dart';
import 'generate_and_history.dart';

class QRControlBar extends StatelessWidget {
  final MobileScannerController controller;
  const QRControlBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
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
                controller.stop();
                isActive = !isActive;
              } else {
                controller.start();
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
