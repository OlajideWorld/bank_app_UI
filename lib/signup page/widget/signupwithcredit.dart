import 'dart:io';
import 'dart:math';

import 'package:bank_app/signup%20page/widget/signupwithcredit2.dart';
import 'package:bank_app/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';

class SignUpwithCredit extends StatelessWidget {
  const SignUpwithCredit({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightSize(700),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(
            width: widthSize(108),
            child: ElevatedButton(
              onPressed: () {},
              child: Container(),
              style: ElevatedButton.styleFrom(
                backgroundColor: maincolor,
                // shadowColor: Colors.greenAccent,
                elevation: 1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                minimumSize: Size(widthSize(108), heightSize(6)), //////// HERE
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: widthSize(60), left: widthSize(33)),
            child: SizedBox(
              height: heightSize(366),
              width: widthSize(368),
              child: Image.asset("assets/logo2.png"),
            ),
          ),
          SizedBox(height: heightSize(21)),
          Text(
            "Sign Up Via Credit",
            style: TextStyle(
                color: textcolor1,
                fontSize: fontSize(30),
                fontWeight: FontWeight.w600),
          ),
          SizedBox(height: heightSize(19)),
          Text(
            "Sign up instantly",
            style: TextStyle(
                color: textcolor1,
                fontSize: fontSize(18),
                fontWeight: FontWeight.w400),
          ),
          SizedBox(height: heightSize(100)),
          GestureDetector(
            onTap: () {
              Get.to(() => const SignupwithCredit2());
            },
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
          )
        ],
      ),
    );
  }
}
