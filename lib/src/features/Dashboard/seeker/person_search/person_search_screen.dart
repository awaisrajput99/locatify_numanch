import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:locatify/src/constants/sizes.dart';
import 'package:locatify/src/features/Dashboard/controllers/dashboard_controller.dart';
import 'package:locatify/src/features/Dashboard/controllers/dropdown_controller_person.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/image_strings.dart';
import '../../common_widgets_of_dashboard/person_form_widget.dart';
import '../../common_widgets_of_dashboard/search_and_upload_screen_header.dart';
import '../../controllers/age_dropdown_controller.dart';
import '../../controllers/image_picker_controller.dart';

class PersonSearchScreen extends StatelessWidget {
  const PersonSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final DropdownControllerPerson dropdownController =
        Get.put(DropdownControllerPerson());
    final AgeDropdownController ageController =
        Get.put(AgeDropdownController());
    final ImagePickerController controller = Get.put(ImagePickerController());

    Size size = MediaQuery.of(context).size;
    final DashboardController dbController = Get.put(DashboardController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: MdAppColors.mdPrimaryColor,
        title: const Text(
          "LOCATIFY",
          style: TextStyle(fontFamily: "Roboto", fontSize: 35, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(MdSizes.mdDefaultPadding),
          child: Column(
            children: [
              SearchAndUploadScreensHeader(
                dbController: dbController,
                size: size,
                image: MdImages.mdPerson,
                title: "Search Person",
              ),
              personFormWidget(
                  size: size,
                  dropdownController: dropdownController,
                  ageController: ageController,
                  controller: controller),
              SizedBox(
                height: size.height * 0.04,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "SEARCH",
                      style: TextStyle(fontFamily: "Roboto", fontSize: 20),
                    )),
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
