import 'package:bank_app/Finance%20Page/widget/paymentgate.dart';
import 'package:bank_app/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';

showPaymentSheet(BuildContext context) {
  final TextEditingController controller2 = TextEditingController();
  return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Wrap(children: [
          SizedBox(
            height: heightSize(700),
            child: Column(children: [
              SizedBox(
                width: widthSize(108),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Container(),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: maincolor,
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                    minimumSize:
                        Size(widthSize(108), heightSize(6)), //////// HERE
                  ),
                ),
              ),
              SizedBox(height: heightSize(39)),
              Padding(
                padding: EdgeInsets.only(left: widthSize(39)),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Add Account Number",
                    style: TextStyle(
                        color: textcolor1,
                        fontSize: fontSize(23),
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(height: heightSize(24)),
              Expanded(
                child: SizedBox(
                  height: heightSize(408),
                  width: widthSize(554),
                  child: TextFormField(
                    maxLines: null,
                    minLines: null,
                    expands: true,
                    style: TextStyle(fontSize: fontSize(70), color: textcolor1),
                    keyboardType: TextInputType.number,
                    obscureText: false,
                    controller: controller2,
                    decoration: InputDecoration(
                      hintText: "    * * * * * * * ",
                      hintStyle:
                          TextStyle(color: textcolor1, fontSize: fontSize(70)),
                      filled: true,
                      fillColor: Color(0xFFECECEC),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Color(0xFFEEEEEE)),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Color(0xFFEEEEEE)),
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () => Get.to(() => PaymentGate()),
                child: Container(
                  height: heightSize(45),
                  width: widthSize(366),
                  padding: EdgeInsets.only(
                      left: widthSize(16), right: widthSize(22)),
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFEEEEEE)),
                      borderRadius: const BorderRadius.all(Radius.circular(24)),
                      color: const Color(0xFFEEEEEE)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Proceed",
                          style: TextStyle(
                              color: Color(0xFFA0A0A0),
                              fontFamily: "Poppins",
                              fontSize: fontSize(14),
                              fontWeight: FontWeight.w700),
                        ),
                        const Icon(
                          Icons.arrow_forward_sharp,
                          color: Color(0xFF979797),
                        )
                      ]),
                ),
              )
            ]),
          )
        ]);
      });
}
