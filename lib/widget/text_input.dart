import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:move_x/util/margin.dart';

class MyTextInput extends StatelessWidget{

  final TextEditingController controller;
  final String hintText;
  double width = 0;

  MyTextInput({@required this.controller, @required this.hintText, this.width});


  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.light(),
      child: Container(
        width: this.width == 0 ? screenWidth(context, percent: 0.8) : this.width,
        child: TextFormField(

          cursorColor: Colors.deepPurple,
          textAlign: TextAlign.start,
          style: GoogleFonts.merriweather(textStyle: TextStyle(fontSize: 14),),
          controller: controller,
          decoration: InputDecoration(
//            contentPadding: EdgeInsets.all(2.0),
//            isDense: true,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.deepPurple),
            ),
            disabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),

            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.deepPurple),
            ),
//          border: InputBorder.none,
              hintText: hintText,
          ),
        ),
      ),
    );
  }
}