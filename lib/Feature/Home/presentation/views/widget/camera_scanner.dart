import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import '../../../../../Core/utils/assets.dart';

class CameraScanner extends StatelessWidget {
  const CameraScanner({
    super.key,
    required this.controller,
  });

  final MobileScannerController controller;

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width * .8;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
          width: size,
          height: size,
          child: Padding(
            padding: const EdgeInsets.only(left: 6, top: 7),
            child: MobileScanner(
              controller: controller,
              onDetect: (barcodes) {
                List<Barcode> codes;
                codes = barcodes.barcodes;
                for (var code in codes) {
                  if (code.rawValue != null) {
                    log(code.rawValue!);
                  }
                }
                controller.stop();
              },
            ),
          ),
        ),
        SvgPicture.asset(
          AppAssets.homeScane,
          width: MediaQuery.of(context).size.width * .82,
        ),
      ],
    );
  }
}
