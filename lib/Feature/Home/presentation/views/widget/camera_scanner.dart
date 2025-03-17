import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qr_code/Feature/Home/data/models/qr_info.dart';
import 'package:qr_code/Feature/Result/presentation/views/result_view.dart';
import '../../../../../Core/utils/assets.dart';

class CameraScanner extends StatelessWidget {
  const CameraScanner({
    super.key,
    required this.controller,
  });

  final MobileScannerController controller;

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width * .71;
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
          width: size,
          height: size,
          child: MobileScanner(
            controller: controller,
            onDetect: (barcodes) {
              List<Barcode> codes = barcodes.barcodes;
              QrInfo qrInfo;
              for (var code in codes) {
                if (code.rawValue != null) {
                  qrInfo = QrInfo(
                    time: DateTime.now(),
                    url: code.rawValue,
                  );
                  controller.stop();
                  GoRouter.of(context)
                      .push(ResultView.id, extra: qrInfo);
                  log(code.rawValue!);
                }
              }
              controller.stop();
            },
          ),
        ),
        SvgPicture.asset(
          AppAssets.homeScane,
          width: MediaQuery.of(context).size.width * .8,
        ),
      ],
    );
  }
}
