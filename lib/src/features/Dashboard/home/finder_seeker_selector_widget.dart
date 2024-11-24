import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:locatify/src/features/Dashboard/controllers/dashboard_controller.dart';

import '../../../constants/colors.dart';
import '../../../constants/image_strings.dart';
import '../controllers/dropdown_controller_homescreen.dart';
class FinderSeekerSelectorWidget extends StatelessWidget {
  const FinderSeekerSelectorWidget({
    super.key,
    required this.dropdownController,
    required this.size,
  });

  final DropdownControllerHomeScreen dropdownController;
  final Size size;

  @override
  Widget build(BuildContext context) {
    final DashboardController controller = Get.put(DashboardController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            GestureDetector(
              onTap: () {
                dropdownController.selectImage(0);
                controller.changeIdentity("finder");
              },
              child: Obx(
                    () => Container(
                  width: size.width * 0.3,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: dropdownController.selectedImageIndex.value ==
                          0
                          ? MdAppColors.mdButtonColor // Active color
                          : Colors.transparent, // Default color
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset(
                    MdImages.mdfinder, // Replace with actual Finder image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Finder",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        Column(
          children: [
            GestureDetector(
              onTap: () {
                dropdownController.selectImage(1);
                controller.changeIdentity("seeker");
              },
              child: Obx(
                    () => Container(
                  width: size.width * 0.3,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: dropdownController.selectedImageIndex.value ==
                          1
                          ? MdAppColors.mdButtonColor // Active color
                          : Colors.transparent, // Default color
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset(
                    MdImages.mdseeker, // Replace with actual Seeker image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Seeker",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ],
    );
  }
}
