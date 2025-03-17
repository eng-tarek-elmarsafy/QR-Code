import 'package:flutter/material.dart';
import 'package:qr_code/Feature/Home/data/models/qr_info.dart';
import 'package:qr_code/Feature/Result/presentation/views/widget/rusult_body.dart';

class ResultView extends StatelessWidget {
  final QrInfo qrInfo;
  static String id = '/ResultView';
  const ResultView({super.key, required this.qrInfo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResultBody(qrInfo: qrInfo),
    );
  }
}
