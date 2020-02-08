import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:move_x/util/margin.dart';
import 'package:move_x/widget/details_card.dart';

class DashBoardPage extends StatefulWidget {
  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    DetailsCard(
                      title: 'wallet',
                      subTitle: 'Balance',
                      number: 'N1000',
                      colors: [
                        Colors.blueAccent,
                        Colors.blueAccent,
                        Colors.lightBlueAccent,
                        Colors.lightBlueAccent,
                        Colors.cyan,
                        Colors.cyan
                      ],
                    ),
                    DetailsCard(
                      title: 'Deliveries',
                      subTitle: 'Completed',
                      number: '62',
                      colors: [
                        Colors.lightGreen,
                        Colors.lightGreen,
                        Colors.lightGreen,
                        Colors.orangeAccent,
                        Colors.orangeAccent,
                        Colors.orange
                      ],
                    ),
                  ],
                ),
                YMargin(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    DetailsCard(
                      title: 'Deliveries',
                      subTitle: 'On-going',
                      number: '17',
                      colors: [
                        Colors.pinkAccent,
                        Colors.pinkAccent,
                        Colors.lightGreen,
                        Colors.orangeAccent,
                        Colors.orangeAccent,
                        Colors.deepPurpleAccent
                      ],
                    ),
                    DetailsCard(
                      title: 'Complaints',
                      subTitle: 'On-going',
                      number: '6',
                      colors: [
                        Colors.deepPurpleAccent,
                        Colors.deepPurpleAccent,
                        Colors.deepPurpleAccent,
                        Colors.deepPurple,
                        Colors.deepPurple,
                        Colors.deepPurple
                      ],
                    ),
                  ],
                ),
                YMargin(20),
                SizedBox(
                  width: screenWidth(context, percent: 0.8),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 10, bottom: 0, right: 10, left: 10),
                    child: Text(
                      'Recent Activities',
                      style: GoogleFonts.raleway(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: screenWidth(context, percent: 0.8),
                  child: Divider(
                    color: Colors.grey.withOpacity(0.6),
//                height: 2,
                    thickness: 1.0,
                  ),
                ),
                YMargin(10),
                Expanded(
                  child: SizedBox(
                    width: screenWidth(context, percent: 0.74),
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (ctx, index) => Container(
                        width: screenHeight(context, percent: 0.7),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          
//                      mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              'Your package with code NXB3SX$index has being delivered to Mr. Obianuju.',
                              style: GoogleFonts.raleway(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),

                            YMargin(8),

                            SizedBox(
                              width: screenWidth(context, percent: 1),
                              child: Text(
                                'Tue 22/04/2020 12:30PM',
                                style: GoogleFonts.raleway(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.blueGrey),
                              ),
                            ),

                            YMargin(20)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
