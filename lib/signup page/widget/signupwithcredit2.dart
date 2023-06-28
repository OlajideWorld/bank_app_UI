import 'package:bank_app/signup%20page/view/successscreen.dart';
import 'package:bank_app/utils/colors.dart';
import 'package:bank_app/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupwithCredit2 extends StatelessWidget {
  const SignupwithCredit2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: widthSize(43), vertical: heightSize(61)),
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
                "Sign Up Via Credit",
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
            decoration: BoxDecoration(
                color: whitecolor,
                border: Border.all(color: whitecolor),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(widthSize(21)),
                    topLeft: Radius.circular(widthSize(21)),
                    bottomLeft: Radius.circular(widthSize(21)),
                    bottomRight: Radius.circular(widthSize(21))),
                boxShadow: [
                  BoxShadow(
                    blurRadius: widthSize(10),
                    color: const Color.fromRGBO(0, 0, 0, 0.25),
                  )
                ]),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: heightSize(24),
                    width: widthSize(342),
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: [
                          Color.fromRGBO(202, 0, 0, 0.32),
                          Color.fromRGBO(0, 33, 78, 0.32)
                        ]),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(widthSize(21)),
                            topLeft: Radius.circular(widthSize(21)))),
                  ),
                  SizedBox(height: heightSize(37)),
                  Padding(
                    padding: EdgeInsets.only(
                        left: widthSize(44), right: widthSize(27)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: heightSize(32),
                                width: widthSize(122),
                                padding: EdgeInsets.only(
                                    top: heightSize(4), left: widthSize(10)),
                                decoration: BoxDecoration(
                                    color: bordercolor2,
                                    border: Border.all(color: bordercolor2),
                                    borderRadius:
                                        BorderRadius.circular(widthSize(5))),
                                child: Text(
                                  "last 4 digit",
                                  style: TextStyle(
                                      fontSize: fontSize(12),
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                            SizedBox(width: widthSize(27)),
                            Expanded(
                              child: Container(
                                height: heightSize(32),
                                width: widthSize(122),
                                padding: EdgeInsets.only(
                                    top: heightSize(4), left: widthSize(10)),
                                decoration: BoxDecoration(
                                    color: bordercolor2,
                                    border: Border.all(color: bordercolor2),
                                    borderRadius:
                                        BorderRadius.circular(widthSize(5))),
                                child: Text(
                                  "Expiry",
                                  style: TextStyle(
                                      fontSize: fontSize(12),
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: heightSize(23)),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: heightSize(32),
                            width: widthSize(122),
                            padding: EdgeInsets.only(
                                top: heightSize(4), left: widthSize(10)),
                            decoration: BoxDecoration(
                                color: bordercolor2,
                                border: Border.all(color: bordercolor2),
                                borderRadius:
                                    BorderRadius.circular(widthSize(20))),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Get.to(() => const SignInSuccess());
              },
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: heightSize(100)),
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
                        "Proceed",
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
        ]),
      ),
    );
  }
}
