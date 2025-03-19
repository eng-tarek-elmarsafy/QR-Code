import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ToggleFlash extends StatelessWidget {
  final MobileScannerController controller;
  const ToggleFlash({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.toggleTorch();
      },
      child: ValueListenableBuilder(
        valueListenable: controller.torchState,
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
