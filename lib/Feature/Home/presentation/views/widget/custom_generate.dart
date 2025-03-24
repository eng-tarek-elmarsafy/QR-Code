import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_code/Feature/Generate_QR/presentation/views/generate_qr_view.dart';

class CustomGenerate extends StatelessWidget {
  const CustomGenerate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).go(GenerateQRView.id);
      },
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
