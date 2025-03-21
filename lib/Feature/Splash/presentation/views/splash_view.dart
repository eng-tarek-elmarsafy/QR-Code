import 'package:flutter/material.dart';
import 'package:qr_code/Core/utils/colors.dart';
import 'package:qr_code/Feature/Splash/presentation/views/widget/splash_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kGoldenSun,
      body: const SplashBody(),
    );
  }
}
