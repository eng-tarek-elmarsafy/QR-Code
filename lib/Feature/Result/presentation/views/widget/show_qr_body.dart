import 'package:flutter/material.dart';
import 'package:qr_code/Core/widget/backgroundapp.dart';
import 'package:qr_code/Feature/Result/presentation/views/widget/quick_actions.dart';
import '../../../../Home/data/models/qr_info.dart';
import 'box_qr_code.dart';
import 'card_qr_info_show.dart';
import 'result_bar.dart';

class ShowQrBody extends StatelessWidget {
  final QrInfo qrInfo;
  const ShowQrBody({super.key, required this.qrInfo});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundApp(),
        SafeArea(
          child: Column(
            children: [
              const ResultBar(text: 'QR Code'),
              const SizedBox(height: 40),
              CardQRInfoShow(qrInfo: qrInfo),
              const SizedBox(height: 25),
              BoxQrCode(qrInfo: qrInfo),
              const SizedBox(height: 20),
              QuickActions(
                  icon1: Icons.share,
                  icon2: Icons.save,
                  onTap1: () {},
                  onTap2: () {}),
            ],
          ),
        ),
      ],
    );
  }
}
