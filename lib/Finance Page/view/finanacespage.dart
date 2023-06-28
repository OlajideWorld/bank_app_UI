import 'package:bank_app/Finance%20Page/view/paymentpage.dart';
import 'package:bank_app/Finance%20Page/widget/showmodalsheet.dart';
import 'package:bank_app/utils/colors.dart';
import 'package:bank_app/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../commons/custombottomBar.dart';
import '../widget/financepagewidget.dart';
import '../widget/financepagewidget2.dart';

class FinancesPages extends StatelessWidget {
  const FinancesPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whitecolor,
        bottomNavigationBar: const CustomBottomBar(),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(
              top: heightSize(50),
              right: widthSize(20),
              left: widthSize(20),
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.wallet,
                    size: heightSize(30),
                    color: maincolor,
                  ),
                  SizedBox(
                    height: heightSize(30),
                    width: widthSize(80),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: heightSize(30),
                            width: widthSize(30),
                            decoration: const BoxDecoration(
                              color: textcolor3,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                                child: Icon(
                              Icons.notifications,
                              size: widthSize(20),
                            )),
                          ),
                          CircleAvatar(
                            radius: widthSize(20),
                            backgroundImage:
                                const AssetImage("assets/profileimage.png"),
                          )
                        ]),
                  )
                ],
              ),
              SizedBox(height: heightSize(20)),
              Text(
                "Credit Card",
                style: TextStyle(
                    color: textcolor3,
                    fontSize: fontSize(35),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins"),
              ),
              Text(
                "Total Balance",
                style: TextStyle(
                    color: maincolor,
                    fontSize: fontSize(50),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins"),
              ),
              SizedBox(height: heightSize(20)),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: heightSize(40),
                  width: widthSize(200),
                  padding: EdgeInsets.only(left: widthSize(10)),
                  decoration: const BoxDecoration(
                      color: textcolor3,
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: heightSize(10),
                          width: widthSize(10),
                          decoration: const BoxDecoration(
                              color: textcolor2, shape: BoxShape.circle),
                        ),
                        Text(
                          "*****5482",
                          style: TextStyle(
                              color: maincolor,
                              fontSize: fontSize(20),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins"),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          size: heightSize(35),
                        )
                      ]),
                ),
              ),
              SizedBox(height: heightSize(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "40 540.74",
                    style: TextStyle(
                        color: maincolor,
                        fontSize: fontSize(30),
                        fontWeight: FontWeight.w600,
                        fontFamily: "Poppins"),
                  ),
                  SizedBox(width: widthSize(10)),
                  Text(
                    "USD",
                    style: TextStyle(
                        color: maincolor,
                        fontSize: fontSize(30),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Poppins"),
                  ),
                ],
              ),
              SizedBox(height: heightSize(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => showPaymentSheet(context),
                    child: SizedBox(
                      child: Column(
                        children: [
                          Container(
                            height: heightSize(70),
                            width: widthSize(70),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: textcolor3),
                            child: Center(
                              child: Icon(
                                Icons.keyboard_double_arrow_up,
                                size: heightSize(25),
                              ),
                            ),
                          ),
                          Text(
                            "Send",
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
                  SizedBox(width: widthSize(20)),
                  SizedBox(
                    child: Column(
                      children: [
                        Container(
                          height: heightSize(70),
                          width: widthSize(70),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: textcolor3),
                          child: Center(
                            child: Icon(
                              Icons.keyboard_double_arrow_down,
                              size: heightSize(25),
                            ),
                          ),
                        ),
                        Text(
                          "Receive",
                          style: TextStyle(
                              color: maincolor,
                              fontSize: fontSize(20),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: widthSize(20)),
                  SizedBox(
                    child: Column(
                      children: [
                        Container(
                          height: heightSize(70),
                          width: widthSize(70),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: textcolor3),
                          child: Center(
                            child: Icon(
                              Icons.add,
                              size: heightSize(25),
                            ),
                          ),
                        ),
                        Text(
                          "Add",
                          style: TextStyle(
                              color: maincolor,
                              fontSize: fontSize(20),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: heightSize(25)),
              Text(
                "Last Recepients",
                style: TextStyle(
                    color: textcolor3,
                    fontSize: fontSize(30),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins"),
              ),
              Text(
                "Send to",
                style: TextStyle(
                    color: maincolor,
                    fontSize: fontSize(50),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins"),
              ),
              showFriends(context),
              SizedBox(height: heightSize(15)),
              showTransactions(context)
            ]),
          ),
        ));
  }
}
