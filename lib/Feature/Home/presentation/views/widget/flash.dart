import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/cubit/flash_cubit.dart';

class Flash extends StatelessWidget {
  const Flash({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FlashCubit, FlashState>(
      builder: (context, state) {
        if (state is FlashOn) {
          return const Icon(
            Icons.flash_on,
            size: 50,
            color: Colors.white,
          );
        } else {
          return const Icon(
            Icons.flash_off,
            size: 50,
            color: Colors.white,
          );
        }
      },
    );
  }
}
