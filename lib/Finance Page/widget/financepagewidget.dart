import 'package:bank_app/Finance%20Page/widget/paymentgate.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';
import '../../utils/sizes.dart';

showFriends(BuildContext context) {
  return SizedBox(
    child: Row(children: [
      GestureDetector(
        onTap: () => Get.to(() => PaymentGate()),
        child: SizedBox(
          child: Column(
            children: [
              Container(
                height: heightSize(70),
                width: widthSize(70),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: textcolor3),
                child: Center(
                  child: Image.asset("assets/profileimage.png"),
                ),
              ),
              Text(
                "Monica P.",
                style: TextStyle(
                    color: maincolor,
                    fontSize: fontSize(20),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins"),
              ),
            ],
          ),
        ),
      ),
      SizedBox(width: widthSize(10)),
      GestureDetector(
        onTap: () => Get.to(() => PaymentGate()),
        child: SizedBox(
          child: Column(
            children: [
              Container(
                height: heightSize(70),
                width: widthSize(70),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: textcolor3),
                child: Center(
                  child: Image.asset("assets/profileimage.png"),
                ),
              ),
              Text(
                "William M.",
                style: TextStyle(
                    color: maincolor,
                    fontSize: fontSize(20),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins"),
              ),
            ],
          ),
        ),
      ),
      SizedBox(width: widthSize(10)),
      GestureDetector(
        onTap: () => Get.to(() => PaymentGate()),
        child: SizedBox(
          child: Column(
            children: [
              Container(
                height: heightSize(70),
                width: widthSize(70),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: textcolor3),
                child: Center(
                  child: Image.asset("assets/profileimage.png"),
                ),
              ),
              Text(
                "Jessica T.",
                style: TextStyle(
                    color: maincolor,
                    fontSize: fontSize(20),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins"),
              ),
            ],
          ),
        ),
      ),
      SizedBox(width: widthSize(10)),
      GestureDetector(
        onTap: () => Get.to(() => PaymentGate()),
        child: SizedBox(
          child: Column(
            children: [
              Container(
                height: heightSize(70),
                width: widthSize(70),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: textcolor3),
                child: Center(
                  child: Image.asset("assets/profileimage.png"),
                ),
              ),
              Text(
                "Tom H.",
                style: TextStyle(
                    color: maincolor,
                    fontSize: fontSize(20),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins"),
              ),
            ],
          ),
        ),
      ),
    ]),
  );
}
