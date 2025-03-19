import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_code/Feature/Home/presentation/manager/camera_controller_cubit/camera_controller_cubit.dart';
import '../../../../../Core/utils/colors.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({
    super.key,
  });

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double zoom = 0.0;
  @override
  Widget build(BuildContext context) {
    final controller = context.read<CameraControllerCubit>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            if (zoom >= 0.11) {
              setState(() {
                zoom -= .11;
                controller.cameraZoom(zoom);
              });
            }
          },
          icon: Icon(
            Icons.remove,
            size: 20,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .68,
          child: Slider(
            thumbColor: AppColor.kGoldenSun,
            activeColor: AppColor.kGoldenSun,
            value: zoom,
            onChanged: (value) {
              zoom = value;
              controller.cameraZoom(zoom);
              setState(() {});
            },
          ),
        ),
        IconButton(
          onPressed: () {
            if (zoom <= .9) {
              setState(() {
                zoom += .11;
                controller.cameraZoom(zoom);
              });
            }
          },
          icon: Icon(
            Icons.add,
            size: 20,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
