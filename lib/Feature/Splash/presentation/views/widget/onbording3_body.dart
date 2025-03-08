import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_code/Core/utils/assets.dart';
import 'package:qr_code/Feature/Home/presentation/views/home_view.dart';
import 'package:qr_code/Feature/Splash/presentation/views/widget/onbording_text.dart';

import 'onbording2_body.dart';

class Onbording3Body extends StatelessWidget {
  const Onbording3Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(
          flex: 2,
        ),
        SvgPicture.asset(
          AppAssets.splashLogo,
        ),
        const Spacer(),
        const OnbordingText(),
        const Spacer(),
        CustomStackOnbording(
          image: AppAssets.intersect3b,
          onPressed: () {
            GoRouter.of(context).push(HomeView.id);
          },
          top: .25,
        ),
      ],
    );
  }
}
