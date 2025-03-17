import 'package:flutter/material.dart';
import 'qr_code_achtion.dart';

class QuickActions extends StatelessWidget {
  final IconData icon1;
  final IconData icon2;
  final VoidCallback onTap1;
  final VoidCallback onTap2;
  const QuickActions({
    super.key,
    required this.icon1,
    required this.icon2,
    required this.onTap1,
    required this.onTap2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        QrCodeAchtion(icon: icon1, onTap: onTap1),
        SizedBox(width: 40),
        QrCodeAchtion(icon: icon2, onTap: onTap2),
      ],
    );
  }
}
