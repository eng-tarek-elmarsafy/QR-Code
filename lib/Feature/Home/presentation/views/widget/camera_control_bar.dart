import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../manager/cubit/flash_cubit.dart';
import 'flash_toggle.dart';

class CameraControlBar extends StatelessWidget {
  const CameraControlBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {},
            icon:const Icon(
              Icons.image,
              size: 50,
              color: Colors.white,
            ),
          ),
          BlocProvider(
            create: (context) => FlashCubit(),
            child:const FlashToggle(),
          ),
          IconButton(
            onPressed: () {},
            icon:const Icon(
              Icons.flip_camera_ios_outlined,
              size: 50,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}