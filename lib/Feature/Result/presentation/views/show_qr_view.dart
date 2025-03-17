import 'package:flutter/material.dart';

import '../../../Home/data/models/qr_info.dart';
import 'widget/show_qr_body.dart';

class ShowQrView extends StatelessWidget {
  final QrInfo qrInfo;
  static const String id = '/ShowQrView';
  const ShowQrView({
    super.key,
    required this.qrInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ShowQrBody(qrInfo: qrInfo),
    );
  }
}
