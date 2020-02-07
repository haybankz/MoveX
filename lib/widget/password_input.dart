import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:move_x/util/margin.dart';

class MyPasswordInput extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;

  MyPasswordInput({@required this.controller, @required this.hintText});

  @override
  State<MyPasswordInput> createState() {
    return MyPasswordState(controller: controller, hintTexts: hintText);
  }
}

class MyPasswordState extends State<MyPasswordInput> {
  TextEditingController controller;
  String hintTexts;
  bool _obscureText = true;

  MyPasswordState({@required this.controller, @required this.hintTexts});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.light(),
      child: Container(
        width: screenWidth(context, percent: 0.8),
        child: Stack(
//          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              style: GoogleFonts.merriweather(textStyle: TextStyle(fontSize: 14),),
              cursorColor: Colors.deepPurple,
              decoration: InputDecoration(
//                contentPadding: EdgeInsets.all(2.0),
//                isDense: true,
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
                hintText: hintTexts,
              ),
//              validator: (val) => val.length < 6 ? 'Password too short.' : null,
//              onSaved: (val) => _password = val,
              obscureText: _obscureText,
            ),
            Positioned(
              right: 1,
//              top: 1,
              child: FlatButton(
                  onPressed: _toggle,
                  child: new Text(_obscureText ? "Show" : "Hide", style: TextStyle(color: Colors.deepPurple),),
              splashColor: Colors.white,
//              color: Colors.white,
              highlightColor: Colors.white,),
            )
          ],
        ),
      ),
    );
  }

  _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
}
