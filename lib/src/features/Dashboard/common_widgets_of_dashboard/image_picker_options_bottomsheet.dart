import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/image_picker_controller.dart';

class ImagePickerOptionsBottomSheet{
  static void showImagePickerOptions(BuildContext context, ImagePickerController controller) {
    Get.bottomSheet(
      Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.camera),
              title: const Text('Pick from Camera'),
              onTap: () {
                Get.back(); // Close the bottom sheet
                controller.pickImageFromCamera();
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo),
              title: const Text('Pick from Gallery'),
              onTap: () {
                Get.back(); // Close the bottom sheet
                controller.pickImageFromGallery();
              },
            ),
            ListTile(
              leading: const Icon(Icons.close),
              title: const Text('Cancel'),
              onTap: () {
                Get.back(); // Close the bottom sheet
              },
            ),
          ],
        ),
      ),
    );
  }
}