import 'package:flutter/material.dart';
import 'package:qr_code/Core/utils/colors.dart';
import 'package:qr_code/Feature/Splash/presentation/views/widget/onbording3_body.dart';

class Onbording3 extends StatelessWidget {
  static const String id = '/Onbording3';
  const Onbording3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kGoldenSun,
      body: const Onbording3Body(),
    );
  }
}
