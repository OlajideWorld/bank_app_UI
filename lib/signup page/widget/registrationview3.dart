import 'package:bank_app/commons/text-field.dart';
import 'package:bank_app/signup%20page/view/profileImage.dart';
import 'package:bank_app/utils/colors.dart';
import 'package:bank_app/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationPage3 extends StatelessWidget {
  RegistrationPage3({super.key});

  final TextEditingController firstname = TextEditingController();
  final TextEditingController lastname = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(
            top: heightSize(50), left: widthSize(30), right: widthSize(30)),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
              "Set up your Profile ✍️",
              style: TextStyle(
                  fontFamily: "Poppins",
                  color: Colors.black,
                  fontSize: fontSize(34),
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(height: heightSize(10)),
            Text(
              "Create an acoount so you can manage your money even faster",
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontFamily: "Poppins",
                  color: Colors.black,
                  fontSize: fontSize(17),
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(height: heightSize(30)),
            SizedBox(
              height: heightSize(55),
              child: InputTextField(
                obscureText: false,
                validator: (String? val) {},
                hintText: "First Name",
                controller: firstname,
                password: false,
                textInputAction: true,
              ),
            ),
            SizedBox(height: heightSize(10)),
            SizedBox(
              height: heightSize(55),
              child: InputTextField(
                obscureText: false,
                validator: (String? val) {},
                hintText: "Last Name",
                controller: lastname,
                password: false,
                textInputAction: true,
              ),
            ),
            SizedBox(height: heightSize(10)),
            SizedBox(
              height: heightSize(55),
              child: InputTextField(
                obscureText: false,
                validator: (String? val) {},
                hintText: "Email",
                controller: email,
                password: false,
                textInputAction: true,
              ),
            ),
            SizedBox(height: heightSize(10)),
            SizedBox(
              height: heightSize(55),
              child: InputTextField(
                obscureText: true,
                validator: (String? val) {},
                hintText: "Password",
                controller: password,
                password: true,
                textInputAction: true,
              ),
            ),
            SizedBox(height: heightSize(10)),
            SizedBox(
              height: heightSize(55),
              child: InputTextField(
                obscureText: true,
                validator: (String? val) {},
                hintText: "Confirm Password",
                controller: confirmpassword,
                password: true,
                textInputAction: true,
              ),
            ),
            SizedBox(height: heightSize(40)),
            GestureDetector(
              onTap: () {
                Get.to(() => const ProfileImageScreen());
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
        ),
      )),
    );
  }
}
