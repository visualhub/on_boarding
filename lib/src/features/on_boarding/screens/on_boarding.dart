import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:on_boarding_screen/src/features/on_boarding/controllers/on_boarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    final oBcontroller = Get.put(OnBoardingController());

    return Scaffold(
      body: Obx(
        () => Stack(
          alignment: Alignment.center,
          children: [
            Builder(
              builder: (context) {
                return LiquidSwipe(
                  slideIconWidget: const Icon(Icons.arrow_back_ios),
                  enableSideReveal: false,
                  onPageChangeCallback: oBcontroller.onPageChangeCallback,
                  waveType: WaveType.circularReveal,
                  pages: oBcontroller.pages,
                  liquidController: oBcontroller.controller,
                );
              },
            ),
            Positioned(
              top: 45,
              right: 30,
              child: TextButton(
                onPressed: () {
                  oBcontroller.skipOnBoarding();
                },
                child: const Text("Skip"),
              ),
            ),
            Positioned(
              bottom: 150,
              child: AnimatedSmoothIndicator(
                duration: const Duration(milliseconds: 100),
                activeIndex: oBcontroller.currentPage.value,
                count: 4,
                effect: const WormEffect(
                  dotHeight: 5.0,
                  activeDotColor: Colors.black,
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              right: 30,
              child: FloatingActionButton(
                onPressed: () {
                  oBcontroller.nextOnBoarding();
                },
                child: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
