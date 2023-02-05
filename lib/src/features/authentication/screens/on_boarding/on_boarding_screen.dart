import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tecttube/src/constants/colors.dart';
import 'package:tecttube/src/features/authentication/controllers/on_boarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  final obController = OnBoardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: obController.pages,
            liquidController: obController.controller,
            onPageChangeCallback: obController.onPageChangedCallback,
            slideIconWidget: const Icon(Icons.arrow_back_ios_new_rounded),
            enableSideReveal: true,
          ),
          Positioned(
            bottom: 60.0,
            child: OutlinedButton(
              onPressed: () => obController.animateToNextSlide(),
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  side: const BorderSide(color: Color(0XFF303030)),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(20.0)),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  color: GCardBgColor,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.arrow_forward_ios_rounded),
              ),
            ),
          ),
          Positioned(
            top: 20,
            right: 20,
            child: TextButton(
              onPressed: () => obController.skip(),
              child: const Text(
                "Skip",
                style: TextStyle(color: GCardBgColor),
              ),
            ),
          ),
          Obx(
            () => Positioned(
              bottom: 5,
              child: AnimatedSmoothIndicator(
                activeIndex: obController.currentPage.value,
                effect: const WormEffect(
                  activeDotColor: GCardBgColor,
                  dotHeight: 5.0,
                ),
                count: 3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
