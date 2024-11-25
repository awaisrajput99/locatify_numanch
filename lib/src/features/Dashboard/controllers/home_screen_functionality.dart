import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:locatify/src/common_widgets/awesome_dialogue/awesome_dialogue.dart';

import 'dashboard_controller.dart';

class HomeScreenFunctionality{
  static void goToSelectedOption(DashboardController controller, BuildContext context){
    if(controller.identity.value.isEmpty){
      showErrorDialog(context,'Please select who you are before proceeding.');
    }
    if (controller.typeSelection.value == "Person" && controller.identity.value == "finder") {
      Get.toNamed("/personUpload");
    }
    else if (controller.typeSelection.value == "Document" && controller.identity.value == "finder"){
      Get.toNamed("/documentUpload");
    }
    else if (controller.typeSelection.value == "Person" && controller.identity.value == "seeker"){
      Get.toNamed("/personSearch");
    }
    else if (controller.typeSelection.value == "Document" && controller.identity.value == "seeker"){
      Get.toNamed("/documentSearch");
    }
  }

}