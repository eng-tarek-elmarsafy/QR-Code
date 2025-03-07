import 'package:flutter/material.dart';
import 'widget/generate_code_body.dart';

class GenerateCodeView extends StatelessWidget {
  static const String id = '/GenerateCodeView';
  const GenerateCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GenerateCodeBody(),
    );
  }
}
