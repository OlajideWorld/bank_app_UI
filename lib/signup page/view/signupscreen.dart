import 'package:bank_app/LoginPage/views/loginpage.dart';
import 'package:bank_app/signup%20page/widget/registrationview1.dart';
import 'package:bank_app/signup%20page/widget/signupwithCredit.dart';
import 'package:bank_app/utils/colors.dart';
import 'package:bank_app/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  showSheet(BuildContext context) {
    return showModalBottomSheet(
        isDismissible: false,
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return Wrap(children: const [SignUpwithCredit()]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      body: Padding(
        padding: EdgeInsets.only(
            right: widthSize(40), left: widthSize(40), top: heightSize(60)),
        child: Column(children: [
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
                "Sign Up (27px)",
                style: TextStyle(
                    color: textcolor1,
                    fontSize: fontSize(27),
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
          SizedBox(height: heightSize(12)),
          Padding(
            padding:
                EdgeInsets.only(right: widthSize(120), left: widthSize(37)),
            child: Text(
              "Sign up for sade, secure and instant banking with IddBank",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: textcolor1,
                  fontSize: fontSize(9),
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(height: heightSize(60)),

          // Card One
          GestureDetector(
            onTap: () => showSheet(context),
            child: Container(
              height: heightSize(191),
              width: widthSize(345),
              padding: EdgeInsets.only(
                  top: heightSize(34),
                  left: widthSize(24),
                  right: widthSize(49),
                  bottom: heightSize(28)),
              decoration: BoxDecoration(
                  color: whitecolor,
                  border: Border.all(color: whitecolor),
                  borderRadius: BorderRadius.circular(widthSize(20)),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: widthSize(10),
                      color: const Color.fromRGBO(0, 0, 0, 0.25),
                    )
                  ]),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        height: heightSize(60),
                        width: widthSize(60),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: bordercolor2),
                        child: Container(
                          padding: const EdgeInsets.all(7),
                          height: heightSize(26),
                          width: widthSize(45),
                          color: Colors.transparent,
                          child: Image.asset("assets/signupCard.png"),
                        )),
                    SizedBox(height: heightSize(15)),
                    Text(
                      "Sign Up Via Credit",
                      style: TextStyle(
                          fontSize: fontSize(20),
                          fontWeight: FontWeight.w400,
                          color: textcolor1),
                    ),
                    SizedBox(height: heightSize(8)),
                    Text(
                      "description text here for sign up ho ahead sign up right now signup sample text lorem impsum text for example",
                      style: TextStyle(
                          color: textcolor1,
                          fontSize: fontSize(8),
                          fontWeight: FontWeight.w400),
                    ),
                  ]),
            ),
          ),
          SizedBox(height: heightSize(53)),

          // Card Two
          GestureDetector(
            onTap: () {
              Get.to(() => const LoginPage());
            },
            child: Container(
              height: heightSize(191),
              width: widthSize(345),
              padding: EdgeInsets.only(
                  top: heightSize(31),
                  left: widthSize(21),
                  right: widthSize(14),
                  bottom: heightSize(31)),
              decoration: BoxDecoration(
                  color: whitecolor,
                  border: Border.all(color: whitecolor),
                  borderRadius: BorderRadius.circular(widthSize(20)),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: widthSize(10),
                      color: const Color.fromRGBO(0, 0, 0, 0.25),
                    )
                  ]),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: heightSize(60),
                      width: widthSize(60),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: bordercolor2),
                      child: SizedBox(
                        height: heightSize(20),
                        width: widthSize(40),
                        child: Image.asset(
                          "assets/signupCard2.png",
                        ),
                      ),
                    ),
                    SizedBox(height: heightSize(15)),
                    Text(
                      "Instant Sign Up",
                      style: TextStyle(
                          fontSize: fontSize(20),
                          fontWeight: FontWeight.w400,
                          color: textcolor1),
                    ),
                    SizedBox(height: heightSize(8)),
                    Text(
                      "description text here for sign up ho ahead sign up right now signup sample text lorem impsum text for example",
                      style: TextStyle(
                          color: textcolor1,
                          fontSize: fontSize(8),
                          fontWeight: FontWeight.w400),
                    ),
                  ]),
            ),
          )
        ]),
      ),
    );
  }
}
