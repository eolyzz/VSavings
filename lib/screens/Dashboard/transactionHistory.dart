import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gt2022/constants.dart';
import 'package:intl/intl.dart';

class TransactionHistoryBody extends StatefulWidget {
  const TransactionHistoryBody({
    Key? key,
  }) : super(key: key);

  @override
  State<TransactionHistoryBody> createState() => _TransactionHistoryBodyState();
}

class _TransactionHistoryBodyState extends State<TransactionHistoryBody> {
  @override
  Widget build(BuildContext context) {
    double widthRatio = MediaQuery.of(context).size.width / 375;
    double heightRatio = (MediaQuery.of(context).size.height / 812);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Padding(
        //   padding: const EdgeInsets.only(top: 16, left: 24),
        //   child: Text(
        //     "Transaction History",
        //     style: GoogleFonts.montserrat(
        //         fontSize: 16, fontWeight: FontWeight.w600, color: primaryBlue),
        //   ),
        // ),
        // SizedBox(
        //   height: heightRatio * 13,
        // ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Card(
            shadowColor: Color.fromRGBO(0, 0, 0, 0.14),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                PaymentDetails(
                  widthRatio: widthRatio,
                  logo: "assets/zenithbank.png",
                  paymentName: "For July Savings",
                  daysAgo: 5,
                  amount: "600,000",
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: const Color.fromRGBO(0, 0, 0, 0.1),
                ),
                PaymentDetails(
                  widthRatio: widthRatio,
                  logo: "assets/zenithbank.png",
                  paymentName: "For June Savings",
                  daysAgo: 5,
                  amount: "600,000",
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: const Color.fromRGBO(0, 0, 0, 0.1),
                ),
                PaymentDetails(
                  widthRatio: widthRatio,
                  logo: "assets/zenithbank.png",
                  paymentName: "For May Savings",
                  daysAgo: 5,
                  amount: "600,000",
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: const Color.fromRGBO(0, 0, 0, 0.1),
                ),
                PaymentDetails(
                  widthRatio: widthRatio,
                  logo: "assets/zenithbank.png",
                  paymentName: "Loan",
                  daysAgo: 30,
                  amount: "3,000,000",
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Color.fromRGBO(0, 0, 0, 0.1),
                ),
                PaymentDetails(
                    widthRatio: widthRatio,
                    logo: "assets/uba.png",
                    paymentName: "For March Savings",
                    daysAgo: 30,
                    amount: "600,000"),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Color.fromRGBO(0, 0, 0, 0.1),
                ),
                PaymentDetails(
                  widthRatio: widthRatio,
                  logo: "assets/zenithbank.png",
                  paymentName: "For February Savings",
                  daysAgo: 30,
                  amount: "600,000",
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Color.fromRGBO(0, 0, 0, 0.1),
                ),
                PaymentDetails(
                  widthRatio: widthRatio,
                  logo: "assets/zenithbank.png",
                  paymentName: "For January Savings",
                  daysAgo: 30,
                  amount: "600,000",
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Color.fromRGBO(0, 0, 0, 0.1),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({
    Key? key,
    required this.widthRatio,
    required this.logo,
    required this.paymentName,
    required this.daysAgo,
    required this.amount,
  }) : super(key: key);

  final double widthRatio;
  final String logo;
  final String paymentName;
  final int daysAgo;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 12, right: 18, left: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(logo),
              SizedBox(width: 12 * widthRatio),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    paymentName,
                    style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: fontColor),
                  ),
                  Text(
                    "$daysAgo days ago",
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: fontColor),
                  )
                ],
              )
            ],
          ),
          Text(
            "${getCurrency()}$amount",
            style: GoogleFonts.montserrat(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

String getCurrency() {
  var format = NumberFormat.simpleCurrency(name: 'NGN');
  return format.currencySymbol;
}
