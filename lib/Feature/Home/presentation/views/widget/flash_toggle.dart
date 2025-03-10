import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qr_code/Feature/Home/presentation/views/widget/flash.dart';

import '../../manager/cubit/flash_cubit.dart';

class FlashToggle extends StatelessWidget {
  final MobileScannerController controller;
  const FlashToggle({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<FlashCubit>(context).toggle(controller);
      },
      child: const Flash(),
    );
  }
}
