import 'package:flutter/material.dart';

import 'widget/open_file_body.dart';

class OpenFileView extends StatelessWidget {
  static String id = '/OpenFileView';
  const OpenFileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OpenFileBody(),
    );
  }
}
