import 'package:flutter/material.dart';
import 'package:qr_code/Feature/History/presentation/views/widget/history_body.dart';

class HistoryView extends StatelessWidget {
  static const String id = '/HistoryView';
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HistoryBody(),
    );
  }
}
