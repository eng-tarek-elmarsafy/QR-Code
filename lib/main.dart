import 'package:flutter/material.dart';
import 'package:qr_code/Core/utils/app_router.dart';

void main() {
  runApp(const QrCode());
}

class QrCode extends StatelessWidget {
  const QrCode({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
