import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_code/Core/utils/assets.dart';
import 'custom_elevated_button.dart';
import 'onbording_text.dart';

class Onbording1Body extends StatelessWidget {
  const Onbording1Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          AppAssets.intersect1T,
          width: MediaQuery.of(context).size.width,
        ),
        SvgPicture.asset(
          AppAssets.splashLogo,
        ),
        const Spacer(
          flex: 2,
        ),
        const OnbordingText(),
        const Spacer(
          flex: 3,
        ),
        const CustomElevatedButton(),
        SvgPicture.asset(
          AppAssets.intersect1B,
          width: MediaQuery.of(context).size.width,
        ),
      ],
    );
  }
}

