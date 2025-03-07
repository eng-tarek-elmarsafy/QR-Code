import 'package:flutter/material.dart';

import 'widget/setting_body.dart';

class SettingView extends StatelessWidget {
  static const String id = '/SettingView';
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SettingBody(),
    );
  }
}
