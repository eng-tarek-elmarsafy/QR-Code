import 'package:flutter/material.dart';

import '../../../../../Core/utils/colors.dart';

class QrCodeAchtion extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  const QrCodeAchtion({super.key, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 60,
      height: 60,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColor.kGoldenSun,
      ),
      child: IconButton(
        onPressed: onTap,
        icon: Icon(
          icon,
          color: AppColor.kShadowBlack,
          size: 30,
        ),
      ),
    );
  }
}
