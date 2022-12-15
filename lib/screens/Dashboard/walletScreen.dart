import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gt2022/constants.dart';
import 'package:intl/intl.dart';

class walletScreen extends StatelessWidget {
  const walletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WSBody(),
    );
  }
}

class WSBody extends StatefulWidget {
  const WSBody({super.key});

  @override
  State<WSBody> createState() => _WSBodyState();
}

class _WSBodyState extends State<WSBody> {
  @override
  Widget build(BuildContext context) {
    double widthRatio = MediaQuery.of(context).size.width / 375;
    double heightRatio = (MediaQuery.of(context).size.height / 812);
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: heightRatio * 200,
          color: Colors.white,
        ),
        Positioned(
          top: 20,
          left: 24,
          right: 24,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "You've saved",
                      style: GoogleFonts.montserrat(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: fontColor),
                    ),
                    SizedBox(
                      height: 8 * heightRatio,
                    ),
                    Column(
                      children: [
                        Row(
                          children: const [
                            WalletBalance(
                              amount: 3600,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30 * widthRatio,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      width: 145,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            "Add Money",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'OpenSans',
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      width: 145,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            "Take Loan",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'OpenSans',
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

String getCurrency() {
  var format = NumberFormat.simpleCurrency(name: 'NGN');
  return format.currencySymbol;
}

class WalletBalance extends StatelessWidget {
  const WalletBalance({
    Key? key,
    required this.amount,
  }) : super(key: key);

  final int amount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "${getCurrency()}$amount",
          style: GoogleFonts.montserrat(
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
