import 'package:bank_app/Profile/view/personaldetailspage.dart';
import 'package:bank_app/utils/colors.dart';
import 'package:bank_app/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../commons/custombottomBar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      bottomNavigationBar: CustomBottomBar(),
      body: Padding(
        padding: EdgeInsets.only(
            top: heightSize(59), right: widthSize(31), left: widthSize(31)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.only(left: widthSize(10)),
            child: Text(
              "Profile",
              style: TextStyle(
                  fontFamily: "Poppins",
                  color: textcolor1,
                  fontSize: fontSize(35),
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(height: heightSize(38)),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: heightSize(199),
              width: widthSize(184),
              child: Image.asset("assets/profilescreen.png"),
            ),
          ),
          SizedBox(height: heightSize(45)),

          //Card 1
          GestureDetector(
            onTap: () => Get.to(() => const PersonalDetailsScreen()),
            child: Container(
              padding: EdgeInsets.only(
                  top: heightSize(26),
                  left: widthSize(28),
                  right: widthSize(20)),
              decoration: BoxDecoration(
                  color: whitecolor,
                  border: Border.all(color: whitecolor),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: widthSize(7),
                        color: const Color.fromRGBO(0, 0, 0, 0.15))
                  ],
                  borderRadius: const BorderRadius.all(Radius.circular(24))),
              height: heightSize(80),
              width: widthSize(366),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: heightSize(30),
                      width: widthSize(200),
                      child: Row(children: [
                        SizedBox(
                          height: heightSize(28),
                          width: widthSize(28),
                          child: Image.asset("assets/personaldetails.png"),
                        ),
                        SizedBox(width: widthSize(10)),
                        Text(
                          "Personal Details",
                          style: TextStyle(
                              color: textcolor1,
                              fontFamily: "Poppins",
                              fontSize: fontSize(19),
                              fontWeight: FontWeight.w700),
                        )
                      ]),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: const Color(0xFF545454),
                      size: heightSize(22),
                    )
                  ]),
            ),
          ),
          SizedBox(height: heightSize(24)),

          // Card 2
          Container(
            padding: EdgeInsets.only(
                top: heightSize(26), left: widthSize(26), right: widthSize(20)),
            decoration: BoxDecoration(
                color: whitecolor,
                border: Border.all(color: whitecolor),
                boxShadow: [
                  BoxShadow(
                      blurRadius: widthSize(7),
                      color: const Color.fromRGBO(0, 0, 0, 0.15))
                ],
                borderRadius: const BorderRadius.all(Radius.circular(24))),
            height: heightSize(80),
            width: widthSize(366),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: heightSize(30),
                    width: widthSize(219),
                    child: Row(children: [
                      SizedBox(
                        height: heightSize(28),
                        width: widthSize(28),
                        child: Image.asset("assets/Vectorbankaccount.png"),
                      ),
                      SizedBox(width: widthSize(9)),
                      Text(
                        "Bank Account Details",
                        style: TextStyle(
                            color: textcolor1,
                            fontFamily: "Poppins",
                            fontSize: fontSize(19),
                            fontWeight: FontWeight.w700),
                      )
                    ]),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: const Color(0xFF545454),
                    size: heightSize(22),
                  )
                ]),
          ),
          SizedBox(height: heightSize(24)),

          // Card 3
          Container(
            padding: EdgeInsets.only(
                top: heightSize(26), left: widthSize(28), right: widthSize(20)),
            decoration: BoxDecoration(
                color: whitecolor,
                border: Border.all(color: whitecolor),
                boxShadow: [
                  BoxShadow(
                      blurRadius: widthSize(7),
                      color: const Color.fromRGBO(0, 0, 0, 0.15))
                ],
                borderRadius: const BorderRadius.all(Radius.circular(24))),
            height: heightSize(80),
            width: widthSize(366),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: heightSize(30),
                    width: widthSize(254),
                    child: Row(children: [
                      SizedBox(
                        height: heightSize(28),
                        width: widthSize(28),
                        child: Image.asset("assets/accopen.png"),
                      ),
                      SizedBox(width: widthSize(10)),
                      Text(
                        "Account openening Form",
                        style: TextStyle(
                            color: textcolor1,
                            fontFamily: "Poppins",
                            fontSize: fontSize(19),
                            fontWeight: FontWeight.w700),
                      )
                    ]),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: const Color(0xFF545454),
                    size: heightSize(22),
                  )
                ]),
          ),
          SizedBox(height: heightSize(24)),

          // Card 4
          Container(
            padding: EdgeInsets.only(
                top: heightSize(26), left: widthSize(28), right: widthSize(20)),
            decoration: BoxDecoration(
                color: whitecolor,
                border: Border.all(color: whitecolor),
                boxShadow: [
                  BoxShadow(
                      blurRadius: widthSize(7),
                      color: const Color.fromRGBO(0, 0, 0, 0.15))
                ],
                borderRadius: const BorderRadius.all(Radius.circular(24))),
            height: heightSize(80),
            width: widthSize(366),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: heightSize(30),
                    width: widthSize(245),
                    child: Row(children: [
                      SizedBox(
                        height: heightSize(28),
                        width: widthSize(28),
                        child: Image.asset("assets/Vectorinvitefriends.png"),
                      ),
                      SizedBox(width: widthSize(10)),
                      Text(
                        "Invite Friend to IddBank",
                        style: TextStyle(
                            color: textcolor1,
                            fontFamily: "Poppins",
                            fontSize: fontSize(19),
                            fontWeight: FontWeight.w700),
                      )
                    ]),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: const Color(0xFF545454),
                    size: heightSize(22),
                  )
                ]),
          ),
          SizedBox(height: heightSize(24)),
        ]),
      ),
    );
  }
}
