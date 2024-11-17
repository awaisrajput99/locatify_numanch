import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:locatify/src/constants/colors.dart';
import 'package:locatify/src/features/authentication/controllers/on_boarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final onBoardingController = Get.put(OnBoardingPageController());

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: onBoardingController.pages,
            preferDragFromRevealedArea: true,
            liquidController: onBoardingController.controller,
            onPageChangeCallback: onBoardingController.onPageChangeCallBack,
          ),
          Positioned(
            top: size.height * 0.06,
            right: size.width * 0.03,
            child: TextButton(
              onPressed: onBoardingController.skip,
              child: const Text(
                "Skip",
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          Positioned(
            bottom: size.height * 0.08,
            child: OutlinedButton(
              onPressed: onBoardingController.animateToNextPage,
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: MdAppColors.mdButtonColor),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
                foregroundColor: Colors.white,
              ),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: MdAppColors.mdButtonColor,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
          ),
          Obx(
            () => Positioned(
              bottom: 20,
              child: AnimatedSmoothIndicator(
                activeIndex: onBoardingController.currentPage.value,
                count: onBoardingController.pages.length,
                effect: const WormEffect(
                  dotHeight: 5.0,
                  activeDotColor: MdAppColors.mdButtonColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
