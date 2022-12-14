import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gt2022/screens/dashboard.dart';

class mainDisplay extends StatefulWidget {
  const mainDisplay({Key? key}) : super(key: key);

  @override
  State<mainDisplay> createState() => mainDisplayState();
}

class mainDisplayState extends State<mainDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: DashboardScreen(),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Hi, Patricia ",
            style: GoogleFonts.montserrat(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black87),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);
}

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Container(
        height: 55,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(
                Icons.home,
                color: Colors.grey,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.grey,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/cartDisplay');
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.person,
                color: Colors.grey,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/accountPage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
