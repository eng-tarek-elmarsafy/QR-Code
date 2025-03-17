import 'package:flutter/material.dart';

class CustomGenerate extends StatelessWidget {
  const CustomGenerate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.qr_code_2,
            color: Colors.white,
            size: 30,
          ),
          const Text(
            'Generate',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Itim',
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
