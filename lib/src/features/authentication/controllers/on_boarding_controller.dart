import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

import '../../../constants/colors.dart';
import '../../../constants/image_strings.dart';
import '../../../constants/text_strings.dart';
import '../models/model_on_boarding.dart';
import '../screens/on_boarding/on_boarding_page_widget.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();

  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: GOnBoardingScreen1,
        title: GOnBoardingTittle1,
        subTitle: GOnBoardingDesc1,
        counterText: GOnBoardingCounter1,
        bgColor: GOnBoardingScreenColor1,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: GOnBoardingScreen2,
        title: GOnBoardingTittle2,
        subTitle: GOnBoardingDesc2,
        counterText: GOnBoardingCounter2,
        bgColor: GOnBoardingScreenColor2,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: GOnBoardingScreen3,
        title: GOnBoardingTittle3,
        subTitle: GOnBoardingDesc3,
        counterText: GOnBoardingCounter3,
        bgColor: GOnBoardingScreenColor3,
      ),
    ),
  ];

  void onPageChangedCallback(int activePageIndex) =>
      currentPage.value = activePageIndex;

  skip() => controller.jumpToPage(page: 2);
  animateToNextSlide(){
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }
}
