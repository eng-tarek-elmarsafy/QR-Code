import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ImageFromGallery extends StatelessWidget {
  const ImageFromGallery({
    super.key,
    required this.controller,
  });

  final MobileScannerController controller;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        await pickImage();
      },
      icon: const Icon(
        Icons.image,
        size: 40,
        color: Colors.white,
      ),
    );
  }

  Future<void> pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image =
        await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      controller.analyzeImage(image.path);
    }
  }
}
