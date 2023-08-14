import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:on_boarding_screen/src/constants/colors.dart';
import 'package:on_boarding_screen/src/constants/image_strings.dart';
import 'package:on_boarding_screen/src/constants/text_strings.dart';
import 'package:on_boarding_screen/src/features/on_boarding/models/on_boarding_model.dart';
import 'package:on_boarding_screen/src/features/on_boarding/widgets/on_boarding_screen_widget.dart';

class OnBoardingController extends GetxController {
  RxInt currentPage = 0.obs;
  final controller = LiquidController();
  List<Widget> pages = [
    OnBoardingScreenWidget(
      model: OnBoardingModel(
        color: tOnBoardingColor1,
        description: tOnBoardingDescription1,
        image: tOnBoardingImage1,
        onBoardingCounter: tOnBoardingCounter1,
        title: tOnBoardingTitle1,
      ),
    ),
    OnBoardingScreenWidget(
      model: OnBoardingModel(
        color: tOnBoardingColor2,
        description: tOnBoardingDescription2,
        image: tOnBoardingImage2,
        onBoardingCounter: tOnBoardingCounter2,
        title: tOnBoardingTitle2,
      ),
    ),
    OnBoardingScreenWidget(
      model: OnBoardingModel(
        color: tOnBoardingColor3,
        description: tOnBoardingDescription3,
        image: tOnBoardingImage3,
        onBoardingCounter: tOnBoardingCounter3,
        title: tOnBoardingTitle3,
      ),
    ),
    OnBoardingScreenWidget(
      model: OnBoardingModel(
          color: tOnBoardingColor4,
          description: tOnBoardingDescription4,
          image: tOnBoardingImage4,
          onBoardingCounter: tOnBoardingCounter4,
          title: tOnBoardingTitle4),
    ),
  ];
  void onPageChangeCallback(int activePageIndex) {
    currentPage.value = activePageIndex;
  }

  void skipOnBoarding() {
    controller.jumpToPage(page: 3);
  }

  void nextOnBoarding() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }
}
