import 'package:bank_app/LoginPage/views/scanbarcode.dart';
import 'package:bank_app/utils/colors.dart';
import 'package:bank_app/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../signup page/widget/registrationview1.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      body: Padding(
        padding: EdgeInsets.only(
            top: heightSize(55), left: widthSize(43), right: widthSize(43)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: maincolor,
                  size: heightSize(24),
                ),
              ),
              SizedBox(width: widthSize(12)),
              Text(
                "Refrel Code",
                style: TextStyle(
                    color: textcolor1,
                    fontSize: fontSize(27),
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
          SizedBox(height: heightSize(12)),
          Padding(
            padding: EdgeInsets.only(left: widthSize(45)),
            child: Text(
              "headin starts with (24px)",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: textcolor1,
                  fontSize: fontSize(9),
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(height: heightSize(73)),
          Container(
            height: heightSize(190),
            width: widthSize(342),
            padding: EdgeInsets.symmetric(
                horizontal: widthSize(100), vertical: heightSize(17)),
            decoration: BoxDecoration(
                color: whitecolor,
                border: Border.all(color: whitecolor),
                borderRadius: BorderRadius.all(Radius.circular(widthSize(20))),
                boxShadow: [
                  BoxShadow(
                    blurRadius: widthSize(10),
                    color: const Color.fromRGBO(0, 0, 0, 0.25),
                  )
                ]),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: heightSize(51),
                    width: widthSize(51),
                    child: Image.asset("assets/scanQR.png"),
                  ),
                  Text(
                    "Scan QR",
                    style: TextStyle(
                        color: textcolor1,
                        fontSize: fontSize(16),
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'Did someone help you signup for mobile banking? Scan their QR below',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: textcolor1,
                        fontSize: fontSize(7),
                        fontWeight: FontWeight.w400),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const ScanQRcode());
                    },
                    child: Container(
                      height: heightSize(32),
                      width: widthSize(122),
                      decoration: BoxDecoration(
                        color: textcolor1,
                        borderRadius: BorderRadius.circular(widthSize(16)),
                        border: Border.all(color: textcolor1),
                      ),
                      child: Center(
                        child: Text(
                          "Scan Now ",
                          style: TextStyle(
                              color: whitecolor,
                              fontSize: fontSize(10),
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
          SizedBox(height: heightSize(59)),
          Container(
            height: heightSize(190),
            width: widthSize(342),
            padding: EdgeInsets.symmetric(
                horizontal: widthSize(100), vertical: heightSize(17)),
            decoration: BoxDecoration(
                color: whitecolor,
                border: Border.all(color: whitecolor),
                borderRadius: BorderRadius.all(Radius.circular(widthSize(20))),
                boxShadow: [
                  BoxShadow(
                    blurRadius: widthSize(10),
                    color: const Color.fromRGBO(0, 0, 0, 0.25),
                  )
                ]),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: heightSize(51),
                    width: widthSize(51),
                    child: Image.asset("assets/personaldetails.png"),
                  ),
                  Text(
                    "Sign Up with your Credentials",
                    style: TextStyle(
                        color: textcolor1,
                        fontSize: fontSize(16),
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'Join the Best Banking System, save for your Future',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: textcolor1,
                        fontSize: fontSize(7),
                        fontWeight: FontWeight.w400),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const RegistrationPage1());
                    },
                    child: Container(
                      height: heightSize(32),
                      width: widthSize(122),
                      decoration: BoxDecoration(
                        color: textcolor1,
                        borderRadius: BorderRadius.circular(widthSize(16)),
                        border: Border.all(color: textcolor1),
                      ),
                      child: Center(
                        child: Text(
                          "Sign up Now",
                          style: TextStyle(
                              color: whitecolor,
                              fontSize: fontSize(10),
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                ]),
          )
        ]),
      ),
    );
  }
}
