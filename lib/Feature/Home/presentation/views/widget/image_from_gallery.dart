import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import '../../manager/camera_controller_cubit/camera_controller_cubit.dart';

class ImageFromGallery extends StatelessWidget {
  const ImageFromGallery({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = context.read<CameraControllerCubit>();
    return IconButton(
      onPressed: () async {
        await pickImage(controller);
      },
      icon: const Icon(
        Icons.image,
        size: 30,
        color: Colors.white,
      ),
    );
  }

  Future<void> pickImage(CameraControllerCubit controller) async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      controller.analyzeImageGallery(image.path);
    }
  }
}
