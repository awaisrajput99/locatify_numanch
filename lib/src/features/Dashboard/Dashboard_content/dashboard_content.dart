import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:locatify/src/constants/colors.dart';
import 'package:locatify/src/features/Dashboard/controllers/dashboard_controller.dart';
import 'package:locatify/src/repositey/authentication_repositery/authentication_repositery.dart';

class DashboardContent extends StatelessWidget {
  const DashboardContent({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DashboardController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: (){
          AuthenticationRepository.instance.logoutUser();
        }, icon: const Icon(Icons.logout_rounded)),
        actions: [
          IconButton(
            onPressed: () => Get.toNamed('/notifications'),
            icon: const Icon(
              Icons.notifications_active_outlined,
              size: 35,
              color: Colors.white,
            ),
          ),
        ],
        backgroundColor: MdAppColors.mdPrimaryColor,
        title: const Text(
          "LOCATIFY",
          style: TextStyle(fontFamily: "Roboto", fontSize: 35, color: Colors.white),
        ),
      ),
      body: PageView(
        controller: controller.pageController,
        onPageChanged: (index) {
          controller.changeIndex(index);
        },
        children: controller.screens,
      ),
      bottomNavigationBar: Obx(
            () => CurvedNavigationBar(
          backgroundColor: Colors.white,
          buttonBackgroundColor: MdAppColors.mdPrimaryColor,
          color: MdAppColors.mdPrimaryColor,
          animationDuration: const Duration(milliseconds: 300),
          items: controller.navItems,
          index: controller.currentIndex.value,
              onTap: (index) {
                controller.changeIndex(index); // Only update currentIndex when valid
                controller.pageController.jumpToPage(index);
              },

        ),
      ),
    );
  }
}
