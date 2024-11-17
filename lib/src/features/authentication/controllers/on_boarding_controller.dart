import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import '../../../constants/colors.dart';
import '../../../constants/image_strings.dart';
import '../models/model_on_boarding.dart';
import '../screens/on_boarding/on_boarding_page_widget.dart';

class OnBoardingPageController extends GetxController {
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    onBoardingWidget(
      model: onBoardingModel(
        image: MdImages.mdcar,
        bgColor: MdAppColors.mdonBoardingPage1color,
        counterText: "1/3",
        subtitle:
            "With this app you can bring your loved ones home easily without any hinderance",
        title: "Bring loved ones home",
      ),
    ),
    onBoardingWidget(
      model: onBoardingModel(
        image: MdImages.mdgadgets,
        bgColor: MdAppColors.mdonBoardingPage2color,
        counterText: "2/3",
        subtitle:
            "With this app you can easily find your lost things and save yourselves from loss",
        title: "Find lost things",
      ),
    ),
    onBoardingWidget(
      model: onBoardingModel(
        image: MdImages.mdchatting,
        bgColor: MdAppColors.mdonBoardingPage3color,
        counterText: "3/3",
        subtitle:
            "You can chat with the person who found your item and set a meeting location",
        title: "Chat with seeker",
      ),
    ),
  ];

  void onPageChangeCallBack(int activePageIndex) {
    currentPage.value = activePageIndex;
  }

  void skip() {
    Get.offNamed("/welcome");
  }

  void animateToNextPage() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }
}
