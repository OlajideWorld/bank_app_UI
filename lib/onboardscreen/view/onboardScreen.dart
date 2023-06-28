import 'package:bank_app/onboardscreen/widget/onboardwidget1.dart';
import 'package:bank_app/onboardscreen/widget/onboardwidget2,.dart';
import 'package:bank_app/utils/colors.dart';
import 'package:bank_app/utils/sizes.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../Routes/routes.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  final PageController controller = PageController();
  bool lastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: widthSize(38)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: heightSize(450),
              width: MediaQuery.of(context).size.width,
              child: PageView(
                  onPageChanged: (index) {
                    setState(() => lastPage = index == 3);
                  },
                  // physics: const BouncingScrollPhysics(),
                  controller: controller,
                  children: [OnboardWidget1(), OnboardWidget2()]),
            ),
            SizedBox(height: heightSize(100)),
            SmoothPageIndicator(
              controller: controller,
              count: 2,
              effect: JumpingDotEffect(
                  activeDotColor: maincolor,
                  dotColor: pageindicator,
                  dotWidth: widthSize(8),
                  dotHeight: heightSize(8)),
            ),
            SizedBox(height: heightSize(13)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.authScreen);
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(
                        color: pageindicator,
                        fontSize: fontSize(16),
                        fontWeight: FontWeight.w400),
                  ),
                ),
                GestureDetector(
                  onDoubleTap: () {},
                  onTap: () {
                    controller.animateToPage(3,
                        duration: const Duration(milliseconds: 800),
                        curve: Curves.easeInOut);
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(
                        color: textcolor1,
                        fontSize: fontSize(16),
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
