import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qr_code/Feature/Home/data/models/qr_info.dart';
import 'package:share_plus/share_plus.dart';
import '../../../../../Core/widget/backgroundapp.dart';
import 'card_qr_info.dart';
import 'quick_actions.dart';
import 'result_bar.dart';

class ResultBody extends StatelessWidget {
  final QrInfo qrInfo;
  const ResultBody({super.key, required this.qrInfo});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const BackgroundApp(),
        SafeArea(
          child: Column(
            children: [
              const ResultBar(text: 'Result'),
              CardQRInfo(qrInfo: qrInfo),
              QuickActions(
                icon1: Icons.share,
                icon2: Icons.copy_rounded,
                onTap1: () {
                  Share.share(qrInfo.url!);
                },
                onTap2: () {
                  Clipboard.setData(
                    ClipboardData(text: qrInfo.url!),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
