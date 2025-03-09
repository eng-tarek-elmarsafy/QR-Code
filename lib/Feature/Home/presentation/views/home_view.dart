import 'package:flutter/material.dart';
import 'package:qr_code/Core/utils/colors.dart';

import 'widget/home_body.dart';

class HomeView extends StatelessWidget {
  static const String id = '/HomeView';
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.kShadowBlack,
      body: HomeBody(),
    );
  }
}
