import 'package:bank_app/Loan%20Page/view/loan_page.dart';
import 'package:bank_app/authpage/controller/authcontroller.dart';
import 'package:bank_app/home%20page/widget/barchart.dart';
import 'package:bank_app/home%20page/widget/profileimage.dart';
import 'package:bank_app/home%20page/widget/transaction_history.dart';
import 'package:bank_app/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../commons/custombottomBar.dart';
import '../../utils/colors.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final AuthController controller = AuthController.instance;
  List<double> weeklySummary = [60000, 2, 2, 2, 2, 2, 2, 2, 2];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whitecolor,
        bottomNavigationBar: CustomBottomBar(),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Container(
            padding: EdgeInsets.only(
                top: heightSize(10), left: widthSize(26), right: widthSize(30)),
            child: Row(
              children: [
                SizedBox(child: ProfileImageWidget()),
                SizedBox(width: widthSize(8)),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    "Hello",
                    style: TextStyle(
                        fontSize: fontSize(10),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins"),
                  ),
                  Text(
                    "Ibrahim",
                    style: TextStyle(
                        fontSize: fontSize(16),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins"),
                  )
                ]),
                const Spacer(),
                Icon(
                  Icons.search_rounded,
                  size: heightSize(18),
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(
              top: heightSize(20), left: widthSize(25), right: widthSize(25)),
          child: Column(children: [
            Container(
              height: heightSize(42),
              width: widthSize(378),
              padding:
                  EdgeInsets.only(left: widthSize(20), right: widthSize(23)),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: widthSize(4),
                        color: const Color.fromRGBO(0, 0, 0, 0.25),
                        offset: Offset(0, 3))
                  ],
                  color: whitecolor,
                  border: Border.all(color: whitecolor),
                  borderRadius:
                      BorderRadius.all(Radius.circular(widthSize(25)))),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: heightSize(42),
                      width: widthSize(230),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.info_outline_rounded,
                              size: heightSize(14),
                              color: textcolor1,
                            ),
                            Text(
                              "Add your loans to unlock full features",
                              style: TextStyle(
                                  color: textcolor1,
                                  fontSize: fontSize(12),
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w400),
                            ),
                          ]),
                    ),
                    Container(
                      height: heightSize(24),
                      width: widthSize(23),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                          color: whitecolor,
                          border: Border.all(color: textcolor1)),
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward,
                          color: textcolor1,
                          size: heightSize(12),
                        ),
                      ),
                    )
                  ]),
            ),
            SizedBox(height: heightSize(30)),
            Container(
              height: heightSize(363),
              width: widthSize(377),
              padding: EdgeInsets.only(
                  top: heightSize(25),
                  left: widthSize(24),
                  right: widthSize(21),
                  bottom: heightSize(42)),
              decoration: BoxDecoration(
                  color: whitecolor,
                  borderRadius:
                      BorderRadius.all(Radius.circular(widthSize(20))),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: widthSize(10),
                        color:const Color.fromRGBO(0, 0, 0, 0.11))
                  ]),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Repayment Amount",
                      style: TextStyle(
                          color: maincolor,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: fontSize(15)),
                    ),
                    SizedBox(height: heightSize(4)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "61,500",
                          style: TextStyle(
                              color: maincolor,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                              fontSize: fontSize(25)),
                        ),
                        Text(
                          "5,000/month",
                          style: TextStyle(
                              color: maincolor,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              fontSize: fontSize(13)),
                        )
                      ],
                    ),
                    SizedBox(height: heightSize(60)),
                    Expanded(
                      child: SizedBox(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          child: BarChartWidget(
                            weeklySummary: weeklySummary,
                          )),
                    ),
                  ]),
            ),
            SizedBox(height: heightSize(16)),
            GestureDetector(
                onTap: () => Get.to(() => LoanScreeen()),
                child: const TransactionHistory())
          ]),
        ));
  }
}
