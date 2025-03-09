import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_code/Core/utils/assets.dart';
import 'package:qr_code/Core/utils/colors.dart';
import 'package:qr_code/Feature/Splash/presentation/views/onbording3.dart';
import 'package:qr_code/Feature/Splash/presentation/views/widget/onbording_text.dart';

class Onbording2Body extends StatelessWidget {
  const Onbording2Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          AppAssets.intersect2T,
          width: MediaQuery.of(context).size.width,
        ),
        const Spacer(),
        SvgPicture.asset(
          AppAssets.splashLogo,
        ),
        const Spacer(
          flex: 3,
        ),
        const OnbordingText(),
        const Spacer(),
        CustomStackOnbording(
          image: AppAssets.intersect2B,
          onPressed: () {
            GoRouter.of(context).push(Onbording3.id);
          },
          top: .111,
        ),
      ],
    );
  }
}

class CustomStackOnbording extends StatelessWidget {
  final String image;
  final VoidCallback onPressed;
  final double top;
  const CustomStackOnbording(
      {super.key,
      required this.image,
      required this.onPressed,
      required this.top});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          image,
          width: MediaQuery.of(context).size.width,
        ),
        Positioned(
          top: MediaQuery.of(context).size.width * top,
          left: MediaQuery.of(context).size.width * .7,
          child: CircleAvatar(
            backgroundColor: AppColor.kGoldenSun,
            radius: 40,
            child: IconButton(
              icon: Icon(Icons.east),
              onPressed: onPressed,
            ),
          ),
        ),
      ],
    );
  }
}
