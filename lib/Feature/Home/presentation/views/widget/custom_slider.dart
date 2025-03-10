import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../../../../../Core/utils/colors.dart';

class CustomSlider extends StatefulWidget {
  final MobileScannerController controller;
  const CustomSlider({
    super.key,
    required this.controller,
  });

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double zoom = 0.0;
  @override
  Widget build(BuildContext context) {
    return Slider(
        thumbColor: AppColor.kGoldenSun,
        activeColor: AppColor.kGoldenSun,
        value: zoom,
        onChanged: (value) {
          zoom = value;
          widget.controller.setZoomScale(value);
          setState(() {});
        });
  }
}
