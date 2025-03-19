import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qr_code/Feature/Home/data/models/qr_info.dart';
import 'package:qr_code/Feature/Home/presentation/manager/camera_controller_cubit/camera_controller_cubit.dart';
import 'package:qr_code/Feature/Result/presentation/views/result_view.dart';
import '../../../../../Core/utils/assets.dart';

class CameraScanner extends StatelessWidget {
  const CameraScanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = context.read<CameraControllerCubit>();
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
            controller: controller.controller,
            onDetect: (barcodes) {
              List<Barcode> codes = barcodes.barcodes;
              QrInfo qrInfo;
              for (var code in codes) {
                if (code.rawValue != null) {
                  qrInfo = QrInfo(
                    time: DateTime.now(),
                    url: code.rawValue,
                  );
                  controller.cameraStart();
                  GoRouter.of(context).push(ResultView.id, extra: qrInfo);
                  log(code.rawValue!);
                }
              }
              controller.cameraStop();
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
