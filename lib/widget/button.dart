import 'package:flutter/material.dart';
import 'package:move_x/util/margin.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback callback;
  double width = 0;

  MyButton({@required this.text, @required this.callback, this.width});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: this.width == 0 ? screenWidth(context, percent: 0.8) : width,
      child: RaisedButton(
        elevation: 8,
        onPressed: callback,
        color: Colors.deepPurple,
        splashColor: Colors.deepPurpleAccent,
        child: Text(
          text.toUpperCase(),
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: EdgeInsets.only(left: 0, right: 0, top: 12, bottom: 12),
      ),
    );
  }
}
