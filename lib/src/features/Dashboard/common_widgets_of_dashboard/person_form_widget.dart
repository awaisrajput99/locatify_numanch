import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../controllers/age_dropdown_controller.dart';
import '../controllers/dropdown_controller_person.dart';
import '../controllers/image_picker_controller.dart';
import '../finder/person_upload/drop_down_widget_person.dart';
import '../seeker/person_search/dropdown_age_selector.dart';
import 'image_picker_field_widget.dart';



class personFormWidget extends StatelessWidget {
  const personFormWidget({
    super.key,
    required this.size,
    required this.dropdownController,
    required this.ageController,
    required this.controller,
  });

  final Size size;
  final DropdownControllerPerson dropdownController;
  final AgeDropdownController ageController;
  final ImagePickerController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        SizedBox(
          height: size.height * 0.04,
        ),
        const Text(
          "Fill out following details",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: size.height * 0.01,
        ),
        DropdownWidgetPerson(dropdownController: dropdownController),
        SizedBox(
          height: size.height * 0.03,
        ),
        Column(
          children: [
            const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Name",
                  style: TextStyle(fontFamily: "Roboto"),
                )),
            SizedBox(
              height: size.height * 0.005,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Full Name",
              ),
            ),
            SizedBox(
              height: size.height * 0.015,
            ),
            const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "City",
                  style: TextStyle(fontFamily: "Roboto"),
                )),
            SizedBox(
              height: size.height * 0.005,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "City",
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Select age",
                  style: TextStyle(fontFamily: "Roboto"),
                )),
            SizedBox(
              height: size.height * 0.005,
            ),
            DropdownAgeSelector(ageController: ageController),
            SizedBox(
              height: size.height * 0.015,
            ),
            const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Description",
                  style: TextStyle(fontFamily: "Roboto"),
                )),
            SizedBox(
              height: size.height * 0.005,
            ),
            TextFormField(
              maxLines: 5,
              decoration: const InputDecoration(
                hintText:
                "Tell something you know about the person",
              ),
            ),
            SizedBox(
              height: size.height * 0.015,
            ),
            const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Upload Image",
                  style: TextStyle(fontFamily: "Roboto"),
                )),
            SizedBox(
              height: size.height * 0.005,
            ),
            ImagePickerFieldWidget(controller: controller),
          ],
        ),
      ],
    );
  }
}
