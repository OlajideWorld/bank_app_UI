import 'package:bank_app/Routes/routes.dart';
import 'package:bank_app/authpage/controller/authcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';
import '../../utils/sizes.dart';

final AuthController controller = AuthController.instance;

showPermission(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: whitecolor,
          title: SizedBox(
            height: heightSize(277),
            width: widthSize(300),
            child: Column(
              children: [
                Icon(Icons.location_on_outlined,
                    color: textcolor1, size: heightSize(20)),
                Text(
                  "Enable Location",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: textcolor1,
                      fontSize: fontSize(24),
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: heightSize(10)),
                Text(
                  "Allow Paynow to use your location and find locations of all biometric, cash agents and business near you.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: textcolor1,
                      fontSize: fontSize(13),
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(height: heightSize(24)),
                GestureDetector(
                  onTap: () {
                    // Get.toNamed(Routes.homeScreen);
                    Get.back();
                  },
                  child: Container(
                    height: heightSize(50),
                    width: widthSize(295),
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16)),
                        border: Border.all(color: whitecolor),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: widthSize(7),
                              color: const Color.fromRGBO(33, 150, 83, 0.07),
                              offset: const Offset(0, 3))
                        ],
                        color: whitecolor),
                    child: Center(
                        child: Text(
                      "Deny",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: fontSize(15),
                          fontWeight: FontWeight.w400),
                    )),
                  ),
                ),
                SizedBox(height: heightSize(10)),
                GestureDetector(
                  onTap: () => Get.back(),
                  child: Container(
                    height: heightSize(50),
                    width: widthSize(295),
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16)),
                        border: Border.all(color: bordercolor3),
                        color: whitecolor),
                    child: Center(
                        child: Text(
                      "Enable Location Access",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: fontSize(15),
                          fontWeight: FontWeight.w400),
                    )),
                  ),
                ),
              ],
            ),
          ),
        );
      });
}
