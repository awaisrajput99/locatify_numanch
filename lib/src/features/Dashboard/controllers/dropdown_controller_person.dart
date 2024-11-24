import 'package:get/get.dart';

class DropdownControllerPerson extends GetxController{
  static DropdownControllerPerson get instance => Get.find();
  var selectedOption = ''.obs;
  // Track selected image index
  var selectedImageIndex = (-1).obs;

  // List of options
  final List<String> items = ['Man', 'Woman', 'Other'];

  // Update the selected image index
  void selectImage(int index) {
    selectedImageIndex.value = index; // Set the clicked image index
  }

  // Update the selected option
  void updateSelectedOption(String value) {
    selectedOption.value = value;
  }
}