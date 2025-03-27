import 'package:flutter/material.dart';
import 'widget/generate_text_body.dart';

class GenerateText extends StatelessWidget {
  static const String id = '/GenerateText';
  const GenerateText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GenerateTextBody(),
    );
  }
}
