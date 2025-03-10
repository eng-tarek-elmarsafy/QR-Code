import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'camera_control_bar.dart';
import 'camera_scanner.dart';
import 'custom_slider.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  late final MobileScannerController controller;
  @override
  void initState() {
    super.initState();
    controller = MobileScannerController();
    controller.start();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CameraControlBar(controller: controller),
        CameraScanner(controller: controller),
        CustomSlider(controller: controller),
      ],
    );
  }
}
