import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:locatify/src/features/Dashboard/controllers/dashboard_controller.dart';
import '../../../constants/colors.dart';
import '../controllers/dropdown_controller_homescreen.dart';

class DropdownWidget extends StatelessWidget {
  const DropdownWidget({super.key, required this.dropdownController});
final DropdownControllerHomeScreen dropdownController;
  @override
  Widget build(BuildContext context) {
    final DashboardController controller = Get.put(DashboardController());
    return DropdownButtonHideUnderline(
      child: Obx(() => DropdownButton2(
        items: dropdownController.items
            .map((item) => DropdownMenuItem<String>(
          value: item,
          child: Text(
            item,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ))
            .toList(),
        value: dropdownController.selectedOption.value.isEmpty
            ? null
            : dropdownController.selectedOption.value, // Use the selected value
        onChanged: (value) {
          dropdownController.updateSelectedOption(value.toString());
          controller.changeTypeSelection(value.toString());
          if (controller.typeSelection.value == "Person" && controller.identity.value == "finder") {
           Get.toNamed("/personUpload");
          }
          else if (controller.typeSelection.value == "Document" && controller.identity.value == "finder"){
            Get.toNamed("/documentUpload");
          }
          else if (controller.typeSelection.value == "Person" && controller.identity.value == "seeker"){
            Get.toNamed("/personSearch");
          }
          else if (controller.typeSelection.value == "Document" && controller.identity.value == "seeker"){
            Get.toNamed("/documentSearch");
          }
        },

        hint: const Text(
          'Select Type',
          style: TextStyle(fontSize: 16, fontFamily: "Roboto"),
        ),
        buttonStyleData: ButtonStyleData(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.7,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            border: Border.all(
              color: MdAppColors.mdButtonColor, // Custom border color
              width: 2.5,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        dropdownStyleData: DropdownStyleData(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        iconStyleData: const IconStyleData(
          icon: Icon(
            Icons.arrow_drop_down,
            color: MdAppColors.mdPrimaryColor,
          ),
          iconSize: 40,
        ),
      )),
    );
  }
}
