import 'package:get/get.dart';

class AgeDropdownController extends GetxController {
  // List of ages
  final List<int> ages = List.generate(100, (index) => index + 1);

  // Selected age (non-nullable with a default value)
  RxInt selectedAge = RxInt(0); // Default to 0 (unselected)

  // Function to update the selected age
  void updateSelectedAge(int? age) {
    if (age != null) {
      selectedAge.value = age; // Non-nullable assignment
    }
  }
}
