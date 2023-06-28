import 'package:bank_app/utils/colors.dart';
import 'package:bank_app/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoanScreeen extends StatefulWidget {
  LoanScreeen({super.key});

  @override
  State<LoanScreeen> createState() => _LoanScreeenState();
}

class _LoanScreeenState extends State<LoanScreeen> {
  final TextEditingController controller = TextEditingController();

  final TextEditingController controller2 = TextEditingController();
  bool month1 = true;
  bool month2 = false;
  bool month3 = false;
  bool month4 = false;
  bool month5 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(
              top: heightSize(60), left: widthSize(30), right: widthSize(30)),
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
            SizedBox(height: heightSize(69)),
            Text(
              "Calculate Your Loan",
              style: TextStyle(
                  fontFamily: "Poppins",
                  color: textcolor1,
                  fontSize: fontSize(25),
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: heightSize(30)),
            TextField(
              controller: controller,
              keyboardType: TextInputType.number,
              style: TextStyle(color: textcolor1, fontSize: fontSize(34)),
              decoration: InputDecoration(
                  hintText: "\$1000 max",
                  hintStyle:
                      TextStyle(color: textcolor2, fontSize: fontSize(34)),
                  suffix: Text(
                    "\$  ",
                    style: TextStyle(
                        fontSize: fontSize(30),
                        fontWeight: FontWeight.w700,
                        color: maincolor),
                  )),
            ),
            SizedBox(height: heightSize(10)),
            Text(
              "You need atleast \$8,000 or more, monthly income for you to be legible to exceed your Loan limit",
              style: TextStyle(
                  fontFamily: "Poppins",
                  color: textcolor2,
                  fontSize: fontSize(14),
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: heightSize(25)),
            TextField(
              controller: controller2,
              keyboardType: TextInputType.number,
              style: TextStyle(color: textcolor1, fontSize: fontSize(27)),
              decoration: InputDecoration(
                  hintText: "Loan Application Amount(\$)",
                  hintStyle:
                      TextStyle(color: textcolor2, fontSize: fontSize(27)),
                  suffix: Text(
                    "\$  ",
                    style: TextStyle(
                        fontSize: fontSize(27),
                        fontWeight: FontWeight.w700,
                        color: maincolor),
                  )),
            ),
            SizedBox(height: heightSize(10)),
            Text(
              "12 times the maximum loanable monthly salary",
              style: TextStyle(
                  fontFamily: "Poppins",
                  color: textcolor2,
                  fontSize: fontSize(14),
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: heightSize(25)),
            Text(
              "Do you want to use coupons?",
              style: TextStyle(
                  fontFamily: "Poppins",
                  color: textcolor1,
                  fontSize: fontSize(19),
                  fontWeight: FontWeight.w700),
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: heightSize(200),
                width: widthSize(200),
                child: Image.asset("assets/HQ1.png"),
              ),
            ),
            Text(
              "Choose your Tenor",
              style: TextStyle(
                  fontSize: fontSize(19), fontWeight: FontWeight.w700),
            ),
            SizedBox(height: heightSize(20)),
            Row(
              children: [
                //month1
                GestureDetector(
                  onTap: () {
                    setState(() {
                      month1 = !month1;
                    });
                  },
                  child: Container(
                    height: heightSize(65),
                    width: widthSize(65),
                    decoration: BoxDecoration(
                      color: month1 ? Colors.green : whitecolor,
                      shape: BoxShape.rectangle,
                      // borderRadius: BorderRadius.all(Radius.circular(18)),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "12",
                            style: TextStyle(
                                fontSize: fontSize(20),
                                fontWeight: FontWeight.w700,
                                color: month1 ? whitecolor : Colors.black,
                                fontFamily: "Poppins"),
                          ),
                          Text(
                            "Month",
                            style: TextStyle(
                                fontSize: fontSize(12),
                                color: month1 ? whitecolor : Colors.black,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Poppins"),
                          )
                        ]),
                  ),
                ),
                SizedBox(width: widthSize(20)),

                //month2
                GestureDetector(
                  onTap: () {
                    setState(() {
                      month2 = !month2;
                    });
                  },
                  child: Container(
                    height: heightSize(65),
                    width: widthSize(65),
                    decoration: BoxDecoration(
                      color: month2 ? Colors.green : whitecolor,
                      shape: BoxShape.rectangle,
                      // borderRadius: BorderRadius.all(Radius.circular(18)),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "24",
                            style: TextStyle(
                                fontSize: fontSize(20),
                                fontWeight: FontWeight.w700,
                                color: month2 ? whitecolor : Colors.black,
                                fontFamily: "Poppins"),
                          ),
                          Text(
                            "Month",
                            style: TextStyle(
                                fontSize: fontSize(12),
                                color: month2 ? whitecolor : Colors.black,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Poppins"),
                          )
                        ]),
                  ),
                ),
                SizedBox(width: widthSize(20)),

                //month3
                GestureDetector(
                  onTap: () {
                    setState(() {
                      month3 = !month3;
                    });
                  },
                  child: Container(
                    height: heightSize(65),
                    width: widthSize(65),
                    decoration: BoxDecoration(
                      color: month3 ? Colors.green : whitecolor,
                      shape: BoxShape.rectangle,
                      // borderRadius: BorderRadius.all(Radius.circular(18)),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "36",
                            style: TextStyle(
                                fontSize: fontSize(20),
                                fontWeight: FontWeight.w700,
                                color: month3 ? whitecolor : Colors.black,
                                fontFamily: "Poppins"),
                          ),
                          Text(
                            "Month",
                            style: TextStyle(
                                fontSize: fontSize(12),
                                color: month3 ? whitecolor : Colors.black,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Poppins"),
                          )
                        ]),
                  ),
                ),
                SizedBox(width: widthSize(20)),

                //month4
                GestureDetector(
                  onTap: () {
                    setState(() {
                      month4 = !month4;
                    });
                  },
                  child: Container(
                    height: heightSize(65),
                    width: widthSize(65),
                    decoration: BoxDecoration(
                      color: month4 ? Colors.green : whitecolor,
                      shape: BoxShape.rectangle,
                      // borderRadius: BorderRadius.all(Radius.circular(18)),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "48",
                            style: TextStyle(
                                fontSize: fontSize(20),
                                fontWeight: FontWeight.w700,
                                color: month4 ? whitecolor : Colors.black,
                                fontFamily: "Poppins"),
                          ),
                          Text(
                            "Month",
                            style: TextStyle(
                                fontSize: fontSize(12),
                                color: month4 ? whitecolor : Colors.black,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Poppins"),
                          )
                        ]),
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
