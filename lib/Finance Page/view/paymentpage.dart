import 'package:bank_app/Finance%20Page/widget/showmodalsheet.dart';
import 'package:bank_app/utils/colors.dart';
import 'package:bank_app/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentScreen extends StatelessWidget {
  PaymentScreen({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(
              top: heightSize(69), left: widthSize(26), right: widthSize(31)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
                  SizedBox(width: widthSize(31)),
                  Text(
                    "Payment",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: textcolor1,
                        fontSize: fontSize(35),
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(height: heightSize(62)),
              Text(
                "Connect with Bank Account",
                style: TextStyle(
                    color: textcolor1,
                    fontFamily: "Poppins",
                    fontSize: fontSize(24),
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "Search or select recipents bank",
                style: TextStyle(
                    color: textcolor1,
                    fontFamily: "Poppins",
                    fontSize: fontSize(13),
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: heightSize(10)),
              SizedBox(
                height: heightSize(45),
                child: TextFormField(
                  controller: controller,
                  decoration: const InputDecoration(
                    hintText: "Search Bank",
                    hintStyle: TextStyle(color: Color(0xFFA0A0A0)),
                    filled: true,
                    fillColor: Color(0xFFEEEEEE),
                    suffixIcon: Icon(
                      Icons.search_rounded,
                      color: Color(0xFFA0A0A0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Color(0xFFEEEEEE)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Color(0xFFEEEEEE)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: heightSize(16)),

              // Card 1
              GestureDetector(
                onTap: () => showPaymentSheet(context),
                child: Container(
                  height: heightSize(75),
                  width: widthSize(366),
                  padding: EdgeInsets.only(
                      top: heightSize(18),
                      left: widthSize(26),
                      bottom: heightSize(17),
                      right: widthSize(20)),
                  decoration: BoxDecoration(
                      color: whitecolor,
                      border: Border.all(color: Color(0xFF26B15D)),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: widthSize(200),
                          child: Row(children: [
                            SizedBox(
                              height: heightSize(39),
                              width: widthSize(37),
                              child: Image.asset("assets/paymentlogo.png"),
                            ),
                            SizedBox(width: widthSize(22)),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Easypaisa",
                                style: TextStyle(
                                    color: textcolor1,
                                    fontFamily: "Poppins",
                                    fontSize: fontSize(20),
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ]),
                        ),
                      ]),
                ),
              ),
              SizedBox(height: heightSize(25)),

              // Card 2
              GestureDetector(
                onTap: () => showPaymentSheet(context),
                child: Container(
                  height: heightSize(75),
                  width: widthSize(366),
                  padding: EdgeInsets.only(
                      top: heightSize(7),
                      left: widthSize(13),
                      bottom: heightSize(7),
                      right: widthSize(20)),
                  decoration: BoxDecoration(
                      color: whitecolor,
                      border: Border.all(color: Color(0xFFFCD110)),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: widthSize(200),
                          child: Row(children: [
                            SizedBox(
                              height: heightSize(60),
                              width: widthSize(60),
                              child: Image.asset("assets/paymentlogo2.png"),
                            ),
                            SizedBox(width: widthSize(11)),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "JazzCash",
                                style: TextStyle(
                                    color: textcolor1,
                                    fontFamily: "Poppins",
                                    fontSize: fontSize(20),
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ]),
                        ),
                      ]),
                ),
              ),
              SizedBox(height: heightSize(25)),

              //Card 3
              GestureDetector(
                onTap: () => showPaymentSheet(context),
                child: Container(
                  height: heightSize(75),
                  width: widthSize(366),
                  padding: EdgeInsets.only(
                      top: heightSize(9),
                      left: widthSize(14),
                      bottom: heightSize(10),
                      right: widthSize(20)),
                  decoration: BoxDecoration(
                      color: whitecolor,
                      border: Border.all(color: Color(0xFF26B15D)),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: widthSize(200),
                          child: Row(children: [
                            SizedBox(
                                height: heightSize(55),
                                width: widthSize(55),
                                child: Image.asset("assets/paymentlogo3.png")),
                            SizedBox(width: widthSize(16)),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "HBL Limited",
                                style: TextStyle(
                                    color: textcolor1,
                                    fontFamily: "Poppins",
                                    fontSize: fontSize(20),
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ]),
                        ),
                      ]),
                ),
              ),
              SizedBox(height: heightSize(25)),

              //Card 4
              GestureDetector(
                onTap: () => showPaymentSheet(context),
                child: Container(
                  height: heightSize(75),
                  width: widthSize(366),
                  padding: EdgeInsets.only(
                      top: heightSize(14),
                      left: widthSize(22),
                      bottom: heightSize(11),
                      right: widthSize(20)),
                  decoration: BoxDecoration(
                      color: whitecolor,
                      border: Border.all(color: Color(0xFFEFA537)),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: widthSize(200),
                          child: Row(children: [
                            SizedBox(
                              height: heightSize(49),
                              width: widthSize(33),
                              child: Image.asset("assets/paymentlogo4.png"),
                            ),
                            SizedBox(width: widthSize(28)),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "PayPro",
                                style: TextStyle(
                                    color: textcolor1,
                                    fontFamily: "Poppins",
                                    fontSize: fontSize(20),
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ]),
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
