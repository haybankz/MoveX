import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:move_x/util/margin.dart';

class DetailsCard extends StatelessWidget {
  final String title, subTitle, number;
  List<Color> colors = [];
  Key key;

  DetailsCard(
      {this.key,
      @required this.title,
      @required this.subTitle,
      @required this.number,
      this.colors});

  @override
  Widget build(BuildContext context) {

    List<Color> _colors = [Colors.lightBlue, Colors.lightBlue, Colors.blueAccent,
      Colors.blueAccent, Colors.cyan, Colors.cyan,];
    return InkWell(
      onTap: (){debugPrint('$title');},
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
              colors: [
                colors != null ? colors[0] : _colors[0],
                colors != null ? colors[1] : _colors[1],
                colors != null ? colors[2] : _colors[2],
                colors != null ? colors[3] : _colors[3],
                colors != null ? colors[4] : _colors[4],
                colors != null ? colors[5] : _colors[5],
              ],
              stops: [
                0.1,
                0.3,
                0.52,
                0.65,
                0.8,
                1.0
              ]),
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            new BoxShadow(
              offset: Offset(9, 12),
              spreadRadius: -5,
              color: Colors.grey,
              blurRadius: 10,
            ),
          ],
        ),
//      color: Colors.grey,
        width: screenWidth(context, percent: 0.41),
//      height: 60,
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title.toUpperCase(),
              style: GoogleFonts.raleway(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
            YMargin(6),
            Text(
              subTitle,
              style: GoogleFonts.raleway(color: Colors.white, fontSize: 12, fontStyle: FontStyle.normal, fontWeight: FontWeight.w300),
            ),
            YMargin(18),
            Center(
              child: Text(
                number.toUpperCase(),
                style: GoogleFonts.raleway(color: Colors.white, fontWeight: FontWeight.w800, fontSize: 20,),
              ),
            ),
            YMargin(6),
          ],
        ),
      ),
    );
  }
}
