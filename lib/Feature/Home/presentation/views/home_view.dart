import 'package:flutter/material.dart';
import 'widget/home_body.dart';

class HomeView extends StatelessWidget {
  static const String id = '/HomeView';
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // backgroundColor: AppColor.kShadowBlack,
      backgroundColor: Color.fromARGB(255, 25, 25, 25),
      body: HomeBody(),
    );
  }
}
