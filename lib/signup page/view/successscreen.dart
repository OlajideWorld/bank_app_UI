import 'package:bank_app/Routes/routes.dart';
import 'package:bank_app/home%20page/view/homesccreen.dart';
import 'package:bank_app/utils/colors.dart';
import 'package:bank_app/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInSuccess extends StatelessWidget {
  const SignInSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: widthSize(51)),
            child: SizedBox(
              height: heightSize(366),
              width: widthSize(368),
              child: Stack(
                children: [
                  SizedBox(
                    height: heightSize(366),
                    width: widthSize(368),
                    child: Image.asset('assets/successlogo.png'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: heightSize(171), left: widthSize(158)),
                    child: SizedBox(
                      height: heightSize(46),
                      width: widthSize(112),
                      child: Image.asset("assets/good_tick.png"),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: heightSize(33)),
          Text(
            "Congratulations",
            style:
                TextStyle(fontSize: fontSize(30), fontWeight: FontWeight.w500),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => Get.toNamed(Routes.homeScreen),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: heightSize(153)),
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Container(
                    height: heightSize(60),
                    width: widthSize(295),
                    decoration: BoxDecoration(
                      color: borderColor,
                      borderRadius: BorderRadius.circular(widthSize(16)),
                      border: Border.all(color: borderColor),
                    ),
                    child: Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                            color: textcolor1,
                            fontSize: fontSize(16),
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
