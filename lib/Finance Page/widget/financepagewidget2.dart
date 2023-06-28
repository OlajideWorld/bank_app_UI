import 'package:bank_app/utils/colors.dart';
import 'package:bank_app/utils/sizes.dart';
import 'package:flutter/material.dart';

showTransactions(BuildContext context) {
  return SizedBox(
    child: Column(children: [
      //Card 1
      Container(
        height: heightSize(75),
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(
            top: heightSize(19),
            right: widthSize(20),
            left: widthSize(20),
            bottom: heightSize(10)),
        decoration: BoxDecoration(
            color: whitecolor,
            boxShadow: [
              BoxShadow(
                  blurRadius: widthSize(7),
                  color: Color.fromRGBO(0, 0, 0, 0.15))
            ],
            borderRadius: BorderRadius.all(Radius.circular(18))),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
            child: Row(children: [
              Icon(
                Icons.arrow_downward_sharp,
                size: heightSize(20),
                color: textcolor1,
              ),
              SizedBox(width: widthSize(30)),
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "From Jordan R.",
                      style: TextStyle(
                          color: maincolor,
                          fontSize: fontSize(15),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins"),
                    ),
                    Text(
                      "Today, 19:10",
                      style: TextStyle(
                          color: textcolor3,
                          fontSize: fontSize(12),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins"),
                    ),
                  ],
                ),
              )
            ]),
          ),
          Text(
            "+\$220",
            style: TextStyle(
                color: maincolor,
                fontSize: fontSize(18),
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins"),
          ),
        ]),
      ),
      SizedBox(height: heightSize(10)),

      // Card 2
      Container(
        height: heightSize(75),
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(
            top: heightSize(19),
            right: widthSize(20),
            left: widthSize(20),
            bottom: heightSize(10)),
        decoration: BoxDecoration(
            color: whitecolor,
            boxShadow: [
              BoxShadow(
                  blurRadius: widthSize(7),
                  color: Color.fromRGBO(0, 0, 0, 0.15))
            ],
            borderRadius: BorderRadius.all(Radius.circular(18))),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
            child: Row(children: [
              Icon(
                Icons.arrow_upward_sharp,
                size: heightSize(20),
                color: textcolor1,
              ),
              SizedBox(width: widthSize(30)),
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "To Monica P.",
                      style: TextStyle(
                          color: maincolor,
                          fontSize: fontSize(15),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins"),
                    ),
                    Text(
                      "Yesterday, 16:10",
                      style: TextStyle(
                          color: textcolor3,
                          fontSize: fontSize(12),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins"),
                    ),
                  ],
                ),
              )
            ]),
          ),
          Text(
            "-\$550",
            style: TextStyle(
                color: maincolor,
                fontSize: fontSize(18),
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins"),
          ),
        ]),
      ),
      SizedBox(height: heightSize(10)),

      // Card 3
      Container(
        height: heightSize(75),
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(
            top: heightSize(19),
            right: widthSize(20),
            left: widthSize(20),
            bottom: heightSize(10)),
        decoration: BoxDecoration(
            color: whitecolor,
            boxShadow: [
              BoxShadow(
                  blurRadius: widthSize(7),
                  color: Color.fromRGBO(0, 0, 0, 0.15))
            ],
            borderRadius: BorderRadius.all(Radius.circular(18))),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
            child: Row(children: [
              Icon(
                Icons.arrow_downward_sharp,
                size: heightSize(20),
                color: textcolor1,
              ),
              SizedBox(width: widthSize(30)),
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "From OWL Company.",
                      style: TextStyle(
                          color: maincolor,
                          fontSize: fontSize(15),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins"),
                    ),
                    Text(
                      "Monday, 20:15",
                      style: TextStyle(
                          color: textcolor3,
                          fontSize: fontSize(12),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins"),
                    ),
                  ],
                ),
              )
            ]),
          ),
          Text(
            "+\$1250",
            style: TextStyle(
                color: maincolor,
                fontSize: fontSize(18),
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins"),
          ),
        ]),
      ),
      SizedBox(height: heightSize(10)),

      //Card 4
      Container(
        height: heightSize(75),
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(
            top: heightSize(19),
            right: widthSize(20),
            left: widthSize(20),
            bottom: heightSize(10)),
        decoration: BoxDecoration(
            color: whitecolor,
            boxShadow: [
              BoxShadow(
                  blurRadius: widthSize(7),
                  color: Color.fromRGBO(0, 0, 0, 0.15))
            ],
            borderRadius: BorderRadius.all(Radius.circular(18))),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
            child: Row(children: [
              Icon(
                Icons.arrow_upward_sharp,
                size: heightSize(20),
                color: textcolor1,
              ),
              SizedBox(width: widthSize(30)),
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "To Jessica T.",
                      style: TextStyle(
                          color: maincolor,
                          fontSize: fontSize(15),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins"),
                    ),
                    Text(
                      "Monday, 17:10",
                      style: TextStyle(
                          color: textcolor3,
                          fontSize: fontSize(12),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins"),
                    ),
                  ],
                ),
              )
            ]),
          ),
          Text(
            "-\$2220",
            style: TextStyle(
                color: maincolor,
                fontSize: fontSize(18),
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins"),
          ),
        ]),
      )
    ]),
  );
}
