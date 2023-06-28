

/**
 * 
 * 
 * Padding(
        padding: EdgeInsets.only(
            top: heightSize(69), left: widthSize(26), right: widthSize(25)),
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
                  "Finance",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      color: textcolor1,
                      fontSize: fontSize(35),
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            SizedBox(height: heightSize(49)),
            Text(
              "Connected Account",
              style: TextStyle(
                  color: textcolor1,
                  fontFamily: "Poppins",
                  fontSize: fontSize(20),
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: heightSize(18)),

            //Card 1
            GestureDetector(
              onTap: () => Get.to(() => PaymentScreen()),
              child: Container(
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
            ),
            SizedBox(height: heightSize(24)),
            Text("Set up a payment",
                style: TextStyle(
                    color: textcolor1,
                    fontFamily: "Poppins",
                    fontSize: fontSize(20),
                    fontWeight: FontWeight.w600)),

            SizedBox(height: heightSize(28)),

            //Card 2
            GestureDetector(
              onTap: () => Get.to(() => PaymentScreen()),
              child: Container(
                height: heightSize(96),
                width: widthSize(377),
                padding: EdgeInsets.only(
                    top: heightSize(20),
                    left: widthSize(17),
                    bottom: heightSize(17),
                    right: widthSize(20)),
                decoration: BoxDecoration(
                    color: whitecolor,
                    border: Border.all(color: Color(0xFFB3EBD9)),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: widthSize(200),
                        child: Row(children: [
                          Container(
                            height: heightSize(48),
                            width: widthSize(48),
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                color: Color(0xFFB3EBD9)),
                            child: Center(
                                child: Image.asset("assets/financelogo2.png")),
                          ),
                          SizedBox(width: widthSize(19)),
                          SizedBox(
                            height: heightSize(48),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Regular Payment",
                                  style: TextStyle(
                                      color: textcolor1,
                                      fontFamily: "Poppins",
                                      fontSize: fontSize(17),
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "\$200",
                                  style: TextStyle(
                                      color: Color(0xFFA0A0A0),
                                      fontFamily: "Poppins",
                                      fontSize: fontSize(17),
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          )
                        ]),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF7C7C7C),
                        size: heightSize(17),
                      )
                    ]),
              ),
            ),
            SizedBox(height: heightSize(20)),

            // Card 3
            GestureDetector(
              onTap: () => Get.to(() => PaymentScreen()),
              child: Container(
                height: heightSize(96),
                width: widthSize(377),
                padding: EdgeInsets.only(
                    top: heightSize(20),
                    left: widthSize(17),
                    bottom: heightSize(17),
                    right: widthSize(20)),
                decoration: BoxDecoration(
                    color: whitecolor,
                    border: Border.all(color: Color(0xFFA181F9)),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: widthSize(200),
                        child: Row(children: [
                          Container(
                            height: heightSize(48),
                            width: widthSize(48),
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            child: Center(
                                child: Image.asset("assets/financelogo3.png")),
                          ),
                          SizedBox(width: widthSize(19)),
                          SizedBox(
                            height: heightSize(48),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Round-ups",
                                  style: TextStyle(
                                      color: textcolor1,
                                      fontFamily: "Poppins",
                                      fontSize: fontSize(17),
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "\$200",
                                  style: TextStyle(
                                      color: Color(0xFFA0A0A0),
                                      fontFamily: "Poppins",
                                      fontSize: fontSize(17),
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          )
                        ]),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF7C7C7C),
                        size: heightSize(17),
                      )
                    ]),
              ),
            ),
            SizedBox(height: heightSize(20)),

            // Card 4
            GestureDetector(
              onTap: () => Get.to(() => PaymentScreen()),
              child: Container(
                height: heightSize(96),
                width: widthSize(377),
                padding: EdgeInsets.only(
                    top: heightSize(20),
                    left: widthSize(17),
                    bottom: heightSize(17),
                    right: widthSize(20)),
                decoration: BoxDecoration(
                    color: whitecolor,
                    border: Border.all(color: Color(0xFFF3B21F)),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: widthSize(230),
                        child: Row(children: [
                          Container(
                            height: heightSize(48),
                            width: widthSize(48),
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            child: Center(
                                child: Image.asset("assets/financelogo4.png")),
                          ),
                          SizedBox(width: widthSize(19)),
                          SizedBox(
                            height: heightSize(48),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Additional payments",
                                  style: TextStyle(
                                      color: textcolor1,
                                      fontFamily: "Poppins",
                                      fontSize: fontSize(17),
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "\$200",
                                  style: TextStyle(
                                      color: Color(0xFFA0A0A0),
                                      fontFamily: "Poppins",
                                      fontSize: fontSize(17),
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          )
                        ]),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF7C7C7C),
                        size: heightSize(17),
                      )
                    ]),
              ),
            ),
          ],
        ),
      ),
 * 
 * 
 * 
 * 
 */