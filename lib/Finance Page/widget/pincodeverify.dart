import 'package:bank_app/Routes/routes.dart';
import 'package:bank_app/authpage/controller/authcontroller.dart';
import 'package:bank_app/commons/getsanckbar.dart';
import 'package:bank_app/commons/loading.dart';
import 'package:bank_app/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../utils/colors.dart';

class ShowPinVerifyWidget extends StatefulWidget {
  const ShowPinVerifyWidget({super.key});

  @override
  State<ShowPinVerifyWidget> createState() => _ShowPinVerifyWidgetState();
}

class _ShowPinVerifyWidgetState extends State<ShowPinVerifyWidget> {
  final AuthController controller = AuthController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightSize(500),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: widthSize(30)),
        child: Column(children: [
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
          SizedBox(height: heightSize(15)),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Enter your PIN CODE 🔒",
              style: TextStyle(
                  fontFamily: "Poppins",
                  color: Colors.black,
                  fontSize: fontSize(34),
                  fontWeight: FontWeight.w900),
            ),
          ),
          SizedBox(height: heightSize(30)),
          PinCodeTextField(
            appContext: context,
            textStyle: const TextStyle(color: maincolor),
            length: 4,
            obscureText: true,
            animationType: AnimationType.fade,
            pinTheme: PinTheme(
                shape: PinCodeFieldShape.circle,
                inactiveColor: bordercolor2,
                // borderRadius: const BorderRadius.all(Radius.circular(5)),
                fieldHeight: heightSize(50),
                fieldWidth: widthSize(40),
                activeFillColor: whitecolor,
                inactiveFillColor: textcolor4,
                activeColor: textcolor1),
            animationDuration: const Duration(milliseconds: 300),
            backgroundColor: Colors.transparent,
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
            onTap: () async {
              Get.to(() => const LoadingScreen());
              await Future.delayed(const Duration(seconds: 3), () {});
              Get.toNamed(Routes.finances);

              controller.currentIndex = 1;
              getSuccessSnackBar("You have Sent money Sucessfully");
            },
            child: Container(
              height: heightSize(55),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: textcolor1,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: const Center(
                  child: Text(
                "Proceed",
                style: TextStyle(
                    color: whitecolor,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w700),
              )),
            ),
          )
        ]),
      ),
    );
  }
}

showPinVerify(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Wrap(children: const [ShowPinVerifyWidget()]);
      });
}
