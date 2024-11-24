import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/image_picker_controller.dart';
import 'image_picker_options_bottomsheet.dart';

class ImagePickerFieldWidget extends StatelessWidget {
  const ImagePickerFieldWidget({
    super.key,
    required this.controller,
  });

  final ImagePickerController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      // Display selected image or placeholder
      return controller.selectedImage.value != null
          ? Container(
        width: double.infinity,
        height: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            border: Border.all(
                color: Colors.black.withOpacity(0.55),
                width: 1.5)),
        child: Image.file(
          controller.selectedImage.value!,
          width: 400,
          height: 400,
          fit: BoxFit.cover,
        ),
      )
          : GestureDetector(
        onTap: () {
          ImagePickerOptionsBottomSheet
              .showImagePickerOptions(context, controller);
        },
        child: Container(
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(3),
              border: Border.all(
                  color: Colors.black.withOpacity(0.55),
                  width: 1.5)),
          child: const Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.image,
                    size: 100,
                    color: Colors.grey,
                  ),
                  Text("Click to upload image")
                ]),
          ),
        ),
      );
    });
  }
}
