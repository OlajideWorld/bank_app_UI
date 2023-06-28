import 'package:bank_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/sizes.dart';

class PersonalDetailsScreen extends StatelessWidget {
  const PersonalDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      body: Padding(
        padding: EdgeInsets.only(
            top: heightSize(59), right: widthSize(31), left: widthSize(31)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
              SizedBox(width: widthSize(14)),
              Text(
                "Profile",
                style: TextStyle(
                    fontFamily: "Poppins",
                    color: textcolor1,
                    fontSize: fontSize(35),
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
          SizedBox(height: heightSize(29)),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: heightSize(199),
              width: widthSize(184),
              child: Image.asset("assets/profilescreen.png"),
            ),
          ),
          SizedBox(height: heightSize(15)),

          //Card 1
          Text("Name",
              style: TextStyle(
                  color: textcolor1,
                  fontFamily: "Poppins",
                  fontSize: fontSize(14),
                  fontWeight: FontWeight.w600)),
          SizedBox(height: heightSize(5)),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.only(
                  top: heightSize(21),
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
              height: heightSize(66),
              width: widthSize(366),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Muhhammad Ibrahim",
                        style: TextStyle(
                            color: Color(0xFF595778),
                            fontFamily: "Poppins",
                            fontSize: fontSize(20),
                            fontWeight: FontWeight.w600)),
                    SizedBox(
                      height: heightSize(17),
                      width: widthSize(17),
                      child: Image.asset("assets/amendicon.png"),
                    )
                  ]),
            ),
          ),
          SizedBox(height: heightSize(17)),

          //Card 2
          Text("Login Name",
              style: TextStyle(
                  color: textcolor1,
                  fontFamily: "Poppins",
                  fontSize: fontSize(14),
                  fontWeight: FontWeight.w600)),
          SizedBox(height: heightSize(5)),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.only(
                  top: heightSize(21),
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
              height: heightSize(66),
              width: widthSize(366),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("IbiiMemon",
                        style: TextStyle(
                            color: Color(0xFF595778),
                            fontFamily: "Poppins",
                            fontSize: fontSize(20),
                            fontWeight: FontWeight.w600)),
                    SizedBox(
                      height: heightSize(17),
                      width: widthSize(17),
                      child: Image.asset("assets/amendicon.png"),
                    )
                  ]),
            ),
          ),
          SizedBox(height: heightSize(17)),

          // Card 3
          Text("Mobile Number",
              style: TextStyle(
                  color: textcolor1,
                  fontFamily: "Poppins",
                  fontSize: fontSize(14),
                  fontWeight: FontWeight.w600)),
          SizedBox(height: heightSize(5)),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.only(
                  top: heightSize(21),
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
              height: heightSize(66),
              width: widthSize(366),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("******6225221",
                        style: TextStyle(
                            color: Color(0xFF595778),
                            fontFamily: "Poppins",
                            fontSize: fontSize(20),
                            fontWeight: FontWeight.w600)),
                    SizedBox(
                      height: heightSize(17),
                      width: widthSize(17),
                      child: Image.asset("assets/amendicon.png"),
                    )
                  ]),
            ),
          ),
          SizedBox(height: heightSize(17)),

          // Card 4
          Text("Email",
              style: TextStyle(
                  color: textcolor1,
                  fontFamily: "Poppins",
                  fontSize: fontSize(14),
                  fontWeight: FontWeight.w600)),
          SizedBox(height: heightSize(5)),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.only(
                  top: heightSize(21),
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
              height: heightSize(66),
              width: widthSize(366),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("ibrahimmemon930@gmail.com",
                        style: TextStyle(
                            color: Color(0xFF595778),
                            fontFamily: "Poppins",
                            fontSize: fontSize(17),
                            fontWeight: FontWeight.w600)),
                    SizedBox(
                      height: heightSize(17),
                      width: widthSize(17),
                      child: Image.asset("assets/amendicon.png"),
                    )
                  ]),
            ),
          ),
          SizedBox(height: heightSize(17)),
        ]),
      ),
    );
  }
}
