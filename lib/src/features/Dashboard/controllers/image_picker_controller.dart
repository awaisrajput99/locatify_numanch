import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {
  // Selected image file (observable)
  var selectedImage = Rx<File?>(null);

  // Image picker instance
  final ImagePicker _picker = ImagePicker();

  // Function to pick an image from the gallery
  Future<void> pickImageFromGallery() async {
    try {
      final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        selectedImage.value = File(image.path);
      }
    } catch (e) {
      print("Error picking image: $e");
    }
  }

  // Function to pick an image from the camera
  Future<void> pickImageFromCamera() async {
    try {
      final XFile? image = await _picker.pickImage(source: ImageSource.camera);
      if (image != null) {
        selectedImage.value = File(image.path);
      }
    } catch (e) {
      print("Error picking image: $e");
    }
  }

  // Clear the selected image
  void clearImage() {
    selectedImage.value = null;
  }
}
