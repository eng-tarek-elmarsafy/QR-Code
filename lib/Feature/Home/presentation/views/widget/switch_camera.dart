import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class SwitchCamera extends StatelessWidget {
  const SwitchCamera({
    super.key,
    required this.controller,
  });

  final MobileScannerController controller;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        controller.switchCamera();
      },
      icon: const Icon(
        Icons.flip_camera_ios_outlined,
        size: 40,
        color: Colors.white,
      ),
    );
  }
}
