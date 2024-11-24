import 'package:get/get.dart';

class DropdownControllerDocument extends GetxController{
  static DropdownControllerDocument get instance => Get.find();
  var selectedOption = ''.obs;
  final List<String> items = ['ID Card', 'Passport', 'Educational', 'Other'];
  void updateSelectedOption(String value) {
    selectedOption.value = value;
  }
}