import 'package:bank_app/utils/colors.dart';
import 'package:bank_app/utils/sizes.dart';
import 'package:flutter/material.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightSize(258),
      width: widthSize(377),
      padding: EdgeInsets.only(
          top: heightSize(22), left: widthSize(19), right: widthSize(33)),
      decoration: BoxDecoration(
          color: whitecolor,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
                blurRadius: widthSize(10), color: Color.fromRGBO(0, 0, 0, 0.11))
          ]),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: heightSize(48),
              width: widthSize(48),
              decoration: BoxDecoration(
                  color: Color(0xFFEBFAF5),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  border: Border.all(color: Color(0xFFEBFAF5))),
              child: Image.asset("assets/Vectorhomehistory.png"),
            ),
            Container(
              height: heightSize(40),
              width: widthSize(41),
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFD9D9D9)),
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                  color: const Color(0xFFD9D9D9)),
              child: Icon(
                Icons.add,
                color: whitecolor,
              ),
            )
          ],
        ),
        SizedBox(height: heightSize(16)),
        Text(
          "Loan History",
          style: TextStyle(
              fontFamily: "Poppins",
              fontSize: fontSize(13),
              fontWeight: FontWeight.w700),
        ),
        SizedBox(height: heightSize(7)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "55,000",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: fontSize(13),
                  fontWeight: FontWeight.w700),
            ),
            Container(
                height: heightSize(17),
                width: widthSize(71),
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFFFDFDF)),
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    color: const Color(0xFFFFDFDF)),
                child: Center(
                  child: Text(
                    'Rejected',
                    style: TextStyle(
                        color: Color(0xFFB02929),
                        fontSize: fontSize(11),
                        fontWeight: FontWeight.w700),
                  ),
                ))
          ],
        ),
        SizedBox(height: heightSize(9)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "36,600",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: fontSize(13),
                  fontWeight: FontWeight.w700),
            ),
            Container(
                height: heightSize(17),
                width: widthSize(71),
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFEBFAF5)),
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    color: const Color(0xFFEBFAF5)),
                child: Center(
                  child: Text(
                    'Clear',
                    style: TextStyle(
                        color: Color(0xFF0ABB85),
                        fontSize: fontSize(11),
                        fontWeight: FontWeight.w700),
                  ),
                ))
          ],
        ),
        SizedBox(height: heightSize(9)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "85,000",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: fontSize(13),
                  fontWeight: FontWeight.w700),
            ),
            Container(
                height: heightSize(17),
                width: widthSize(71),
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF0ABB85)),
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    color: const Color(0xFF0ABB85)),
                child: Center(
                  child: Text(
                    'Disburse',
                    style: TextStyle(
                        color: whitecolor,
                        fontSize: fontSize(11),
                        fontWeight: FontWeight.w700),
                  ),
                ))
          ],
        )
      ]),
    );
  }
}
