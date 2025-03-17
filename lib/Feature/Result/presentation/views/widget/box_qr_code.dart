import 'package:flutter/material.dart';
import '../../../../../Core/utils/colors.dart';
import '../../../../Home/data/models/qr_info.dart';
import 'generate_qr_code.dart';

class BoxQrCode extends StatelessWidget {
  final QrInfo qrInfo;
  const BoxQrCode({super.key, required this.qrInfo});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: AppColor.kGoldenSun,
        borderRadius: BorderRadius.circular(6),
      ),
      child: SizedBox(
        width: 200,
        height: 200,
        child: GenerateQrCode(data: qrInfo.url!),
        // child: ,
      ),
    );
  }
}
