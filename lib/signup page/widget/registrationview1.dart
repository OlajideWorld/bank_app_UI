import "package:bank_app/signup%20page/widget/registrationview2.dart";
import "package:bank_app/utils/colors.dart";
import "package:bank_app/utils/sizes.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:intl_phone_field/intl_phone_field.dart";

class RegistrationPage1 extends StatefulWidget {
  const RegistrationPage1({super.key});

  @override
  State<RegistrationPage1> createState() => _RegistrationPage1State();
}

class _RegistrationPage1State extends State<RegistrationPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
              left: widthSize(30), top: heightSize(50), right: widthSize(30)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                "Enter your phone \nnumber ☎️",
                style: TextStyle(
                    fontFamily: "Poppins",
                    color: Colors.black,
                    fontSize: fontSize(34),
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(height: heightSize(10)),
              Text(
                "We will send an OTP Verification to you.",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontFamily: "Poppins",
                    color: Colors.black,
                    fontSize: fontSize(17),
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(height: heightSize(25)),
              IntlPhoneField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: maincolor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: maincolor),
                  ),
                ),
                initialCountryCode: 'IN',
                onChanged: (phone) {
                  setState(() {
                    debugPrint(phone.number);
                  });
                },
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Get.to(() => const RegistrationPage2());
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
                          "Send me the Code",
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
            ],
          ),
        ),
      ),
    );
  }
}
