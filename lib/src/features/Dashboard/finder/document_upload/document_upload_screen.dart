import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';
import '../../common_widgets_of_dashboard/document_form_widget.dart';
import '../../common_widgets_of_dashboard/search_and_upload_screen_header.dart';
import '../../controllers/dashboard_controller.dart';
import '../../controllers/dropdown_controller_document.dart';
import '../../controllers/image_picker_controller.dart';

class DocumentUpload extends StatelessWidget {
  const DocumentUpload({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final ImagePickerController controller = Get.put(ImagePickerController());
    final DropdownControllerDocument dropdownController =
    Get.put(DropdownControllerDocument());
    final DashboardController dbController = Get.put(DashboardController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: MdAppColors.mdPrimaryColor,
        title: const Text(
          "LOCATIFY",
          style: TextStyle(
              fontFamily: "Roboto", fontSize: 35, color: Colors.white),
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
                image: MdImages.mdDocument,
                title: "Upload Document",
              ),
              DocumentFormWidget(
                  size: size,
                  dropdownController: dropdownController,
                  controller: controller),
              SizedBox(
                height: size.height * 0.04,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "UPLOAD",
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
