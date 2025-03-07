import 'package:flutter/material.dart';
import 'package:qr_code/Core/utils/colors.dart';

import 'widget/onbording1_body.dart';

class Onbording1 extends StatelessWidget {
  static const String id = '/Onbording1';
  const Onbording1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kGoldenSun,
      body: const Onbording1Body(),
    );
  }
}
