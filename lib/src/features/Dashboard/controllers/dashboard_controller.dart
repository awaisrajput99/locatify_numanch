import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:locatify/src/features/Dashboard/profile/user_profile.dart';

import '../chat/chat_screen.dart';
import '../home/home_screen.dart';

class DashboardController extends GetxController {
  static DashboardController get instance => Get.find();

  RxInt currentIndex = 0.obs;
  var identity = ''.obs;
  var typeSelection = ''.obs;
  final PageController pageController = PageController();

  void changeIdentity(String identity) {
    this.identity.value = identity;
  }
  void changeTypeSelection(String type){
    typeSelection.value = type;
  }

  final navItems = const <Widget>[
    Icon(Icons.home, size: 35, color: Colors.white),
    Icon(Icons.chat_bubble_outline_rounded, size: 35, color: Colors.white),
    Icon(Icons.person_outline, size: 35, color: Colors.white),
  ];

  final List<Widget> screens = [
    const HomeScreen(),
    const ChatScreen(),
    const UserProfile(),
  ];

  void changeIndex(int index) {
    if (index >= 0 && index < screens.length) {
      currentIndex.value = index;
    } else {
      print('Invalid index: $index');
    }
  }




  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
