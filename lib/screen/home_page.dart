import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:move_x/screen/bottom_navigation/destination.dart';
import 'package:move_x/screen/bottom_navigation/destination_view.dart';
import 'package:move_x/util/margin.dart';
import 'package:move_x/widget/details_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: allDestinations.map<Widget>((Destination destination){
          return DestinationView(destination: destination,);
        }).toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffffffff),
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.deepPurple,
        selectedIconTheme: IconThemeData(
          color: Colors.deepPurple
        ),
        items: allDestinations.map((Destination destination){
          return BottomNavigationBarItem(
            icon: Icon(destination.icon, color: Colors.grey,),
//            backgroundColor: Color(0xffe0e0e0),
            title: Text(destination.title, style: GoogleFonts.raleway(),),
            activeIcon: Icon(destination.icon, color: Colors.deepPurple,),
          );
        }).toList(),
      ),
    );
  }
}
