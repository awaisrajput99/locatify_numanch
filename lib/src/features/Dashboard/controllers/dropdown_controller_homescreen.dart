import 'package:get/get.dart';

class DropdownControllerHomeScreen extends GetxController {
  static DropdownControllerHomeScreen get instance => Get.find();
  var selectedOption = ''.obs;
  // Track selected image index
  var selectedImageIndex = (-1).obs;

  // List of options
  final List<String> items = ['Person', 'Document'];

  // Update the selected image index
  void selectImage(int index) {
    selectedImageIndex.value = index; // Set the clicked image index
  }

  // Update the selected option
  void updateSelectedOption(String value) {
    selectedOption.value = value;
  }


}
