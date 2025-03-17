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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AppColor.kGoldenSun,
      ),
      child: Container(
        constraints: BoxConstraints(minHeight: 65),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColor.kShadowBlack,
        ),
        child: Row(
          children: [
            const Spacer(),
            const CustomGenerate(),
            const Spacer(
              flex: 3,
            ),
            const CustomHistory(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
