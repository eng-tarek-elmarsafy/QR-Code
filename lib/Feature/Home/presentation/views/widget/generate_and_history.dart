import 'package:flutter/material.dart';
import '../../../../../Core/utils/colors.dart';
import 'custom_generate.dart';
import 'custom_history.dart';

class GenerateAndHistory extends StatelessWidget {
  const GenerateAndHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1.5),
      decoration: _boxDecoration,
      child: Container(
        constraints: const BoxConstraints(minHeight: 65),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColor.kShadowBlack,
        ),
        child: const Row(
          children: [
            Spacer(),
            CustomGenerate(),
            Spacer(flex: 3),
            CustomHistory(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

const BoxDecoration _boxDecoration = BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(30)),
  color: AppColor.kGoldenSun,
);
