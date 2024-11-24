import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:locatify/src/features/Dashboard/controllers/dropdown_controller_document.dart';
import '../../../constants/colors.dart';

class DropdownWidgetDocument extends StatelessWidget {
  const DropdownWidgetDocument({super.key, required this.dropdownController});
  final DropdownControllerDocument dropdownController;
  @override
  Widget build(BuildContext context) {
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
