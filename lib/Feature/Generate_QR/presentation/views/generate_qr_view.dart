import 'package:flutter/material.dart';

import 'widget/generate_code_body.dart';

class GenerateQRView extends StatelessWidget {
  static const String id = '/GenerateQRView';
  const GenerateQRView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GenerateQRBody(),
    );
  }
}
