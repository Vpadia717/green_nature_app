import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tecttube/src/constants/image_strings.dart';
import 'package:tecttube/src/constants/text_strings.dart';
import 'package:tecttube/src/features/authentication/controllers/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: Stack(
        children: [
          if (MediaQuery.of(context).size.width != 960)
            //Logo Image Animation
            Obx(
              () => AnimatedPositioned(
                top: splashController.animate.value ? 100 : 0,
                left: 0,
                right: 0,
                duration: const Duration(milliseconds: 1000),
                child: const Image(
                  image: AssetImage(GSplashImage),
                ),
              ),
            ),

          //Brand Name Animation
          Obx(
            () => AnimatedPositioned(
              bottom: 80,
              left: 0,
              duration: const Duration(milliseconds: 1000),
              right: splashController.animate.value ? 0 : -50,
              child: AnimatedOpacity(
                opacity: splashController.animate.value ? 1 : 0,
                duration: const Duration(milliseconds: 1000),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      GAppName,
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ],
                ),
              ),
            ),
          ),

          //Brand Tag Line Animation
          Obx(
            () => AnimatedPositioned(
              bottom: splashController.animate.value ? 50 : 0,
              left: 0,
              duration: const Duration(milliseconds: 1000),
              right: 0,
              child: AnimatedOpacity(
                opacity: splashController.animate.value ? 1 : 0,
                duration: const Duration(milliseconds: 1000),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      GAppTagLine,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
