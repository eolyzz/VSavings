import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gt2022/constants.dart';
import 'package:gt2022/screens/Dashboard/transactionHistory.dart';
import 'package:gt2022/screens/Dashboard/walletScreen.dart';
import 'package:gt2022/services/data.dart';
import 'package:gt2022/utilities/constants.dart';
import 'package:gt2022/views/components/return_bankImage.dart';
import 'package:gt2022/views/home/transaction_details_screen.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthRatio = MediaQuery.of(context).size.width / 375;
    double heightRatio = (MediaQuery.of(context).size.height / 812);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100)),
                              child: Image.asset(
                                'assets/images/resized-1.jpg',
                                height: 40,
                                fit: BoxFit.fill,
                                width: 40,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Hi, Patricia',
                              style: boldTextStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: primaryColor,
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Account Balance',
                          style: GoogleFonts.mulish(
                            color: accentColor,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            WalletBalance(
                              amount: "600,000",
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Add Money',
                                  style: GoogleFonts.mulish(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.9,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  height: 28,
                                  width: 28,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                            // Container(
                            //   height: 30,
                            //   width: 40,
                            //   decoration: BoxDecoration(
                            //     borderRadius: BorderRadius.circular(8),
                            //     color: accentColor,
                            //   ),   ),

                            SizedBox(height: 7),
                            Row(
                              children: [
                                Text(
                                  'Take Loan',
                                  style: GoogleFonts.mulish(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.9,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  height: 28,
                                  width: 28,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Transaction History",
                  style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: primaryBlue),
                ),
                SizedBox(
                  height: heightRatio * 13,
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Container(
                    //   margin: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                    //   child: Text(
                    //     '25 Mar 2021',
                    //     style: GoogleFonts.mulish(
                    //       fontSize: 11,
                    //     ),
                    //   ),
                    // ),
                    TransactionHistoryBody(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
