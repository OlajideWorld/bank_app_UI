import 'package:bank_app/Finance%20Page/widget/pincodeverify.dart';
import 'package:bank_app/utils/colors.dart';
import 'package:bank_app/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentGate extends StatelessWidget {
  PaymentGate({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitecolor,
      body: Padding(
        padding: EdgeInsets.only(
            top: heightSize(70),
            left: widthSize(30),
            right: widthSize(30),
            bottom: heightSize(30)),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: maincolor,
                    size: heightSize(24),
                  ),
                ),
                SizedBox(width: widthSize(12)),
                Text(
                  "Tranfer Money",
                  style: TextStyle(
                      color: textcolor1,
                      fontSize: fontSize(30),
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
            SizedBox(height: heightSize(48)),
            Container(
              height: heightSize(96),
              width: widthSize(377),
              padding: EdgeInsets.only(
                  top: heightSize(20),
                  left: widthSize(17),
                  bottom: heightSize(17),
                  right: widthSize(20)),
              decoration: BoxDecoration(
                  color: whitecolor,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: widthSize(8),
                        color: const Color.fromRGBO(0, 0, 0, 0.15))
                  ],
                  border: Border.all(color: whitecolor),
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: widthSize(200),
                      child: Row(children: [
                        Container(
                          height: heightSize(58),
                          width: widthSize(58),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              color: Color(0xFF2B7AE3)),
                          child: Center(
                              child: Image.asset("assets/financelogo.png")),
                        ),
                        SizedBox(width: widthSize(19)),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "UBL Digital",
                            style: TextStyle(
                                color: textcolor1,
                                fontFamily: "Poppins",
                                fontSize: fontSize(18),
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ]),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFF2B7AE3),
                      size: heightSize(17),
                    )
                  ]),
            ),
            SizedBox(height: heightSize(30)),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Enter Amount",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: fontSize(25),
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: heightSize(20)),
            SizedBox(
              height: heightSize(65),
              child: TextFormField(
                style: TextStyle(color: textcolor1, fontSize: fontSize(34)),
                keyboardType: TextInputType.number,
                obscureText: false,
                controller: controller,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  // contentPadding: EdgeInsets.only(left: widthSize(110)),
                  hintText: "1000",
                  hintStyle:
                      TextStyle(color: textcolor1, fontSize: fontSize(34)),
                  prefix: Text(
                    "   \$",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: maincolor,
                        fontSize: fontSize(34),
                        fontWeight: FontWeight.w700),
                  ),
                  filled: true,
                  fillColor: whitecolor,
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(color: whitecolor),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(color: whitecolor),
                  ),
                ),
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () => showPinVerify(context),
              child: Container(
                height: heightSize(55),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: textcolor1,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: const Center(
                    child: Text(
                  "Proceed",
                  style: TextStyle(
                      color: whitecolor,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
