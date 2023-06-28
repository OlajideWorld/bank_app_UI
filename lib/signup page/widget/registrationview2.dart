import 'package:bank_app/signup%20page/widget/registrationview3.dart';
import 'package:bank_app/utils/colors.dart';
import 'package:bank_app/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class RegistrationPage2 extends StatelessWidget {
  const RegistrationPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(
            top: heightSize(50), left: widthSize(30), right: widthSize(30)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: textcolor1,
            ),
          ),
          SizedBox(height: heightSize(30)),
          Text(
            "Confirm your number ☎️",
            style: TextStyle(
                fontFamily: "Poppins",
                color: Colors.black,
                fontSize: fontSize(34),
                fontWeight: FontWeight.w900),
          ),
          SizedBox(height: heightSize(10)),
          Text(
            "Enter the Code we sent to the number",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontFamily: "Poppins",
                color: Colors.black,
                fontSize: fontSize(17),
                fontWeight: FontWeight.w300),
          ),
          SizedBox(height: heightSize(70)),
          PinCodeTextField(
            appContext: context,
            textStyle: const TextStyle(color: whitecolor),
            length: 6,
            obscureText: false,
            animationType: AnimationType.fade,
            pinTheme: PinTheme(
                shape: PinCodeFieldShape.underline,
                inactiveColor: textcolor3,
                // borderRadius: const BorderRadius.all(Radius.circular(5)),
                fieldHeight: heightSize(50),
                fieldWidth: widthSize(40),
                activeFillColor: textcolor1,
                inactiveFillColor: textcolor4,
                activeColor: textcolor1),
            animationDuration: const Duration(milliseconds: 300),
            backgroundColor: whitecolor,
            enableActiveFill: true,
            onCompleted: (v) {
              print("Completed");
            },
            onChanged: (value) {
              print(value);
            },
            beforeTextPaste: (text) {
              print("Allowing to paste $text");
              //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
              //but you can show anything you want here, like your pop up saying wrong paste format or etc
              return true;
            },
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Get.to(() => RegistrationPage3());
            },
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: heightSize(20)),
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
                      "Confirm",
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
        ]),
      )),
    );
  }
}
