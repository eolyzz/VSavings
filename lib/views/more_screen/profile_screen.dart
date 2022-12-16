import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gt2022/utilities/constants.dart';
import 'package:gt2022/views/more_screen/widgets/profile_action_tile.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () => Get.back(),
                          child: Icon(
                            Icons.chevron_left_rounded,
                            size: 35,
                            color: primaryColor,
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            width: double.infinity,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        'Profile',
                        style: boldTextStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            width: double.infinity,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          child: Image.asset(
                            'assets/images/resized-1.jpg',
                            height: 100,
                            width: 100,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Odewole, Olatunde Abdul-Jemeel',
                        overflow: TextOverflow.ellipsis,
                        softWrap: null,
                        style: GoogleFonts.mulish(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'COPY',
                            style: labelTextStyle,
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 4,
                                  top: 0,
                                  child: Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                      color: accentColor,
                                      border: Border.all(
                                        color: primaryColor,
                                        width: 1.5,
                                      ),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 4,
                                  child: Container(
                                    padding: EdgeInsets.all(3),
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                      color: primaryColor,
                                      border: Border.all(
                                        color: primaryColor,
                                        width: 1.5,
                                      ),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            '1101663071',
                            style: GoogleFonts.mulish(
                              fontSize: 15,
                              letterSpacing: 0.8,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.badge,
                            color: primaryColor,
                            size: 18,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'T3',
                            style: labelTextStyle,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      ProfileActionTile(
                        title: 'Patricia Ighereno',
                        subtitle: 'Account Name',
                        action: () {},
                      ),
                      ProfileActionTile(
                        title: 'X, D5',
                        subtitle: 'Address',
                        action: () {},
                      ),
                      ProfileActionTile(
                        title: '+23480377747X7',
                        subtitle: 'Phone number',
                        action: () {},
                      ),
                      ProfileActionTile(
                        title: 'patricia@gmail.com',
                        subtitle: 'Email address',
                        action: () {},
                      ),
                      ProfileActionTile(
                        title: 'NIN Slip',
                        subtitle: 'Identification',
                        action: () {},
                      ),
                      ProfileActionTile(
                        title: 'Ogheneyole Ighereno',
                        subtitle: 'Next of Kin',
                        action: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
