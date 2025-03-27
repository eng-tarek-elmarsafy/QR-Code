import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_code/Core/utils/assets.dart';

import '../../../../../Core/utils/colors.dart';
import 'custom_button_generat.dart';
import 'title_and_text_field.dart';

class CardGenerateText extends StatelessWidget {
  const CardGenerateText(
      {super.key,
      required this.title,
      required this.hintText,
      required this.onSubmitted,
      required this.onPressed});

  final String title;
  final String hintText;
  final Function(String value) onSubmitted;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    const boxDecoration = BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black,
          offset: Offset(0, -4),
          blurRadius: 10,
          spreadRadius: -.5,
        ),
        BoxShadow(
          color: AppColor.kGoldenSun,
          offset: Offset(0, -2),
        ),
        BoxShadow(
          color: AppColor.kShadowBlack,
          offset: Offset(0, 3),
          blurRadius: 10,
          spreadRadius: -1,
        ),
        BoxShadow(
          color: AppColor.kGoldenSun,
          offset: Offset(0, 2),
        ),
      ],
      color: Color.fromARGB(255, 46, 44, 44),
      borderRadius: BorderRadius.all(
        Radius.circular(6),
      ),
    );
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 32),
      decoration: boxDecoration,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 40,
          ),
          SvgPicture.asset(
            AppAssets.textLogo,
          ),
          const SizedBox(
            height: 20,
          ),
          TitleAndTextField(
            title: title,
            onSubmitted: onSubmitted,
            hintText: hintText,
          ),
          const SizedBox(
            height: 52,
          ),
          CustomButtonGenerat(
            onPressed: onPressed,
          ),
          const SizedBox(
            height: 42,
          ),
        ],
      ),
    );
  }
}
