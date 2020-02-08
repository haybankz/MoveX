import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:move_x/screen/home_page.dart';
import 'package:move_x/util/margin.dart';
import 'package:move_x/widget/button.dart';
import 'package:move_x/widget/otp.dart';

class VerificationPage extends StatefulWidget {
  @override
  VerificationPageState createState() => VerificationPageState();
}

class VerificationPageState extends State<VerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: Center(
            child: Container(
              width: screenWidth(context, percent: 0.8),
              child: ListView(
                shrinkWrap: true,
//              mainAxisAlignment: MainAxisAlignment.start,
//              mainAxisSize: MainAxisSize.max,
                children: <Widget>[
//                  YMargin(40),
                  Icon(
                    Icons.ac_unit,
                    size: screenHeight(context, percent: 0.26),
                  ),
                  YMargin(20),
                  Center(
                    child: Text(
                      'Verification'.toUpperCase(),
                      style: GoogleFonts.raleway(
                        color: Colors.deepPurple,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 5,
                      ),
                    ),
                  ),
                  YMargin(12),
                  SizedBox(
                    width: screenWidth(context, percent: 0.48),
                    child: Text(
                      'Enter verification code sent to your email',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.raleway(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  YMargin(10),
                  Otp(),
                  YMargin(8),
                  SizedBox(
                    width: screenWidth(context, percent: 0.8),
                    child: Divider(
                      color: Colors.grey.withOpacity(0.6),
//                height: 2,
                      thickness: 1.0,
                    ),
                  ),
                  YMargin(12),
                  MyButton(text: 'Validate', callback: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                      width: screenWidth(context, percent: 0.8)),
                  YMargin(8),
                  Center(
                    child: GestureDetector(
                      onTap: (){

                        debugPrint('to login');
                      },
                      child: Text('Did not receive code? Click to request new code.', style: GoogleFonts.merriweather(color: Colors.cyan, fontSize: 12),),),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
