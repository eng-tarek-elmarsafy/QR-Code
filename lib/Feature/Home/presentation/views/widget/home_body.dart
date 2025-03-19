import 'package:flutter/material.dart';
import 'camera_control_bar.dart';
import 'camera_scanner.dart';
import 'custom_slider.dart';
import 'qr_control_bar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CameraControlBar(),
        Spacer(),
        CameraScanner(),
        Spacer(),
        CustomSlider(),
        Spacer(flex: 3),
        QRControlBar(),
        SizedBox(height: 4),
      ],
    );
  }
}
