import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:move_x/util/margin.dart';

class FilterButton extends StatelessWidget{

  final VoidCallback onPressed;
  
  FilterButton({@required this.onPressed});
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenWidth(context, percent: 0.9),
      child: RaisedButton(
        onPressed: onPressed,
        elevation: 8.0,
        color: Colors.deepPurple,
        splashColor: Colors.deepPurpleAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("FILTER", style: GoogleFonts.raleway(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),),
            Icon(Icons.call_split, color: Colors.white,),
          ],
        ),
      ),
    );
  }
}