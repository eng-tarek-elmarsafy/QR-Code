import 'package:flutter/material.dart';
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            if (zoom >= 0.11) {
              setState(() {
                zoom -= .11;
                widget.controller.setZoomScale(zoom);
              });
            }
          },
          icon: Icon(
            Icons.remove,
            size: 20,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .68,
          child: Slider(
            thumbColor: AppColor.kGoldenSun,
            activeColor: AppColor.kGoldenSun,
            value: zoom,
            onChanged: (value) {
              zoom = value;
              widget.controller.setZoomScale(zoom);
              setState(() {});
            },
          ),
        ),
        IconButton(
          onPressed: () {
            if (zoom <= .9) {
              setState(() {
                zoom += .11;
                widget.controller.setZoomScale(zoom);
              });
            }
          },
          icon: Icon(
            Icons.add,
            size: 20,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
