import 'package:flutter/material.dart';
import 'package:qr_code/Core/utils/colors.dart';

import 'widget/onbording2_body.dart';

class Onbording2 extends StatelessWidget {
  static const String id = '/Onbording2';
  const Onbording2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kGoldenSun,
      body: const Onbording2Body(),
    );
  }
}
