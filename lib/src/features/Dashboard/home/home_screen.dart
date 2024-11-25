import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:locatify/src/constants/image_strings.dart';
import 'package:locatify/src/constants/sizes.dart';
import 'package:locatify/src/features/Dashboard/Dashboard_content/dropdown_widget_home_screen.dart';
import '../controllers/dropdown_controller_homescreen.dart';
import 'finder_seeker_selector_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final DropdownControllerHomeScreen dropdownController = Get.put(DropdownControllerHomeScreen());

    return Container(
      padding: const EdgeInsets.all(MdSizes.mdDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: size.height * 0.02,
          ),
          Image.asset(
            MdImages.mdHome,
            height: size.height * 0.2,
          ),
          const Text(
            "Who Are you?",
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          FinderSeekerSelectorWidget(dropdownController: dropdownController, size: size),
          SizedBox(
            height: size.height * 0.02,
          ),
        DropdownWidgetHomeScreen(dropdownController: dropdownController)
        ],
      ),
    );
  }
}

