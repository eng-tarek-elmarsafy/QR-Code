import 'package:flutter/material.dart';
import 'package:qr_code/Feature/Generate_Code/presentation/views/widget/generate_code_body.dart';

class GenerateQRView extends StatelessWidget {
  static const String id = '/GenerateQRView';
  const GenerateQRView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GenerateCodeBody(),
    );
  }
}
