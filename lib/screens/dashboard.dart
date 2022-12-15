import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gt2022/constants.dart';
import 'package:gt2022/customWidgets.dart';
import 'package:gt2022/screens/Dashboard/transactionHistory.dart';
import 'package:gt2022/screens/Dashboard/walletScreen.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DSBody(),
    );
  }
}

class DSBody extends StatefulWidget {
  const DSBody({super.key});

  @override
  State<DSBody> createState() => _DSBodyState();
}

class _DSBodyState extends State<DSBody> {
  @override
  Widget build(BuildContext context) {
    double widthRatio = MediaQuery.of(context).size.width / 375;
    double heightRatio = (MediaQuery.of(context).size.height / 812);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            height: heightRatio * 210,
            child: walletScreen(),
          ),
          Card(
            shadowColor: Color.fromRGBO(0, 0, 0, 0.14),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 19),
              child: Column(
                children: [
                  SavingPlan(
                    widthRatio: widthRatio,
                    text: 'Saving Plan',
                    savingPlan: 200,
                    logo: "assets/newPlan.png",
                  ),
                ],
              ),
            ),
          ),
          TransactionHistoryBody(),
        ],
      ),
    );
  }
}

class SavingPlan extends StatelessWidget {
  const SavingPlan({
    Key? key,
    required this.widthRatio,
    required this.logo,
    required this.text,
    required this.savingPlan,
  }) : super(key: key);

  final double widthRatio;
  final String logo;

  final String text;
  final int savingPlan;

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
              const SizedBox(
                height: 8,
              ),
              Text(
                text,
                style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: fontColor),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "${getCurrency()}$savingPlan ",
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "monthly",
                style: GoogleFonts.montserrat(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
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
