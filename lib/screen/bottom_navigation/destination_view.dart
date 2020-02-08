import 'package:flutter/material.dart';
import 'package:move_x/screen/bottom_navigation/destination.dart';
import 'package:move_x/screen/dashboard_page.dart';
import 'package:move_x/screen/deliveries_page.dart';
import 'package:move_x/screen/home_page.dart';

class DestinationView extends StatefulWidget {

  final Destination destination;

  DestinationView({@required this.destination});

  @override
  _DestinationView createState() => _DestinationView();
}

class _DestinationView extends State<DestinationView> {

  TextEditingController controller = TextEditingController();



  @override
  Widget build(BuildContext context) {
    switch(widget.destination.title){
      case 'Dashboard': return DashBoardPage();

      case 'Deliveries': return DeliveriesPage();


      default: return Container(
          child: Center(
            child: TextFormField(
              controller: controller,
            ),
          )
        );


    }
  }
}