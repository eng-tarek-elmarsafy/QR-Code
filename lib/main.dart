import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qr_code/Core/utils/app_router.dart';
import 'package:qr_code/Feature/Home/presentation/manager/camera_controller_cubit/camera_controller_cubit.dart';

void main() {
  runApp(const QrCode());
}

class QrCode extends StatelessWidget {
  const QrCode({super.key});
  
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CameraControllerCubit(MobileScannerController()),
      child: MaterialApp.router(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
      ),
    );
  }
}
