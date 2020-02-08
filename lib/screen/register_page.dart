import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:move_x/screen/login_page.dart';
import 'package:move_x/screen/verification_page.dart';
import 'package:move_x/util/margin.dart';
import 'package:move_x/widget/button.dart';
import 'package:move_x/widget/password_input.dart';
import 'package:move_x/widget/text_input.dart';

class RegisterPage extends StatefulWidget {
  @override
  RegisterPageState createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            elevation: 0,
            title: Text(
              'Go back',
              style: GoogleFonts.raleway(color: Colors.white),
            ),
            centerTitle: false,
          ),
          resizeToAvoidBottomInset: true,
          body: Container(
            width: screenWidth(context, percent: 1.0),
            height: screenHeight(context, percent: 1.0),
            color: Colors.deepPurple,
            child: ListView(
              shrinkWrap: false,
//            mainAxisAlignment: MainAxisAlignment.end,
//            mainAxisSize: MainAxisSize.max,
              children: <Widget>[
//                YMargin(60),
                Container(
                  height: (screenHeight(context) - 80),
                  width: screenWidth(context),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Center(
                    child: Material(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
//                    crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
//                          YMargin(20),
                          Icon(
                            Icons.ac_unit,
                            size: screenHeight(context, percent: 0.26),
                          ),
                          YMargin(16),
                          Text(
                            'Register'.toUpperCase(),
                            style: GoogleFonts.raleway(
                              color: Colors.deepPurple,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 5,
                            ),
                          ),
                          YMargin(10),
                          MyTextInput(controller: null, hintText: 'Full Name', width: screenWidth(context, percent: 0.8),),
                          YMargin(8),
                          MyTextInput(controller: null, hintText: 'Email', width: screenWidth(context, percent: 0.8)),
                          YMargin(8),
                          MyPasswordInput(
                              controller: null, hintText: 'Password'),
                          YMargin(8),
                          MyTextInput(controller: null, hintText: 'Telephone', width: screenWidth(context, percent: 0.8)),
                          YMargin(16),
                          MyButton(
                              text: 'Register',
                              callback: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => VerificationPage(),
                                  ),
                                );
                                debugPrint('register');
                              },
                              width: screenWidth(context, percent: 0.8),),
                          YMargin(8),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                ),
                              );
                              debugPrint('to login');
                            },
                            child: Text(
                              'Already have an account? Click to login.',
                              style: GoogleFonts.merriweather(
                                  color: Colors.cyan, fontSize: 12),
                            ),
                          ),
                          YMargin(16)
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
