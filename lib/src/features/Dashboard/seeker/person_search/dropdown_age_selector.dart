import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/age_dropdown_controller.dart';

class DropdownAgeSelector extends StatelessWidget {
  const DropdownAgeSelector({
    super.key,
    required this.ageController,
  });

  final AgeDropdownController ageController;

  @override
  Widget build(BuildContext context) {
    return Obx(() => DropdownButtonHideUnderline(
      child: DropdownButton2<int>(
        hint: const Text(
          'Select Age',
          style: TextStyle(fontSize: 17),
        ),
        value: ageController.selectedAge.value == 0 ? null : ageController.selectedAge.value,
        onChanged: (int? newValue) {
          ageController.updateSelectedAge(newValue);
        },
        items: ageController.ages.map<DropdownMenuItem<int>>((int value) {
          return DropdownMenuItem<int>(
            value: value,
            child: Text(
              value.toString(),
              style: const TextStyle(fontSize: 16),
            ),
          );
        }).toList(),
        buttonStyleData: ButtonStyleData(
          height: 56,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
            border: Border.all(color: Colors.black.withOpacity(0.55), width: 1.5),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        dropdownStyleData: DropdownStyleData(
          maxHeight: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
          ),
        ),
        iconStyleData: IconStyleData(
          icon: Icon(Icons.arrow_drop_down, color: Colors.black.withOpacity(0.55)),
          iconSize: 34,
        ),
      ),
    ));
  }
}
