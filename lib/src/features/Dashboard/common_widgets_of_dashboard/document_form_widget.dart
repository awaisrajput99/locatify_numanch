import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../controllers/dropdown_controller_document.dart';
import '../controllers/image_picker_controller.dart';
import 'dropdown_widget_document.dart';
import 'image_picker_field_widget.dart';

class DocumentFormWidget extends StatelessWidget {
  const DocumentFormWidget({
    super.key,
    required this.size,
    required this.dropdownController,
    required this.controller,
  });

  final Size size;
  final DropdownControllerDocument dropdownController;
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
        DropdownWidgetDocument(dropdownController: dropdownController),
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
                hintText: "Name on documnent",
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
              height: size.height * 0.015,
            ),
            const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Document No",
                  style: TextStyle(fontFamily: "Roboto"),
                )),
            SizedBox(
              height: size.height * 0.005,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Document No",
              ),
            ),
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
                hintText: "Tell something you know about the document",
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
        )
      ],
    );
  }
}
