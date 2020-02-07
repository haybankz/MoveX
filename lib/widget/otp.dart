import 'package:flutter/material.dart';
import 'package:move_x/util/margin.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';

class Otp extends StatelessWidget{

//  PinDecoration _pinDecoration;
//  TextEditingController _pinEditingController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context, percent: 0.6),
      child: PinInputTextField(

        pinLength: 4,
        decoration: UnderlineDecoration(
          color: Colors.grey, gapSpace:8,
            lineHeight: 2,
//          textStyle: TextStyle(fontSize: 14,),
        ),
//      controller: _pinEditingController,
        autoFocus: true,
        textInputAction: TextInputAction.done,
        onSubmit: (pin) {
          debugPrint('submit pin:$pin');
        },
      ),
    );
  }
}