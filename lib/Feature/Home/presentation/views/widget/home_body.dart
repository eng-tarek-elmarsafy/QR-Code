import 'package:flutter/material.dart';
import 'camera_control_bar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        CameraControlBar(),
      ],
    );
  }
}
