import 'package:flutter/material.dart';
import '../../../../../Core/utils/colors.dart';

class CustomButtonGenerat extends StatelessWidget {
  const CustomButtonGenerat({
    super.key,
    required this.onPressed,
  });
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(0, 46),
        backgroundColor: AppColor.kGoldenSun,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(6),
          ),
        ),
      ),
      onPressed: onPressed,
      child: const Text(
        'Generate QR Code',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color.fromRGBO(51, 51, 51, 1),
          fontFamily: 'Itim',
          fontSize: 16,
          letterSpacing: 0,
          fontWeight: FontWeight.normal,
          height: 1,
        ),
      ),
    );
  }
}
