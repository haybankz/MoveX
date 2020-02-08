import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:move_x/util/margin.dart';
import 'package:move_x/widget/button.dart';
import 'package:move_x/widget/filter_button.dart';
import 'package:move_x/widget/text_input.dart';

class DeliveriesPage extends StatefulWidget {
  @override
  _DeliveriesPageState createState() => _DeliveriesPageState();
}

class _DeliveriesPageState extends State<DeliveriesPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          floatingActionButton: FloatingActionButton(onPressed: (){},
          child: Icon(Icons.arrow_upward, color: Colors.white,),),
          appBar: PreferredSize(

//            backgroundColor: Colors.white,
//            elevation: 10,
          preferredSize: Size(double.infinity, 170),
            child: Container(
//              color: Colors.white,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  new BoxShadow(
                    offset: Offset(0, 8),
                    spreadRadius: -9,
                    color: Colors.grey,
                    blurRadius: 10,
                  ),
                ],
              ),
              width: double.infinity,
              padding: EdgeInsets.all(20).add(EdgeInsets.only(top: 10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  FilterButton(onPressed: (){}),
                  YMargin(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      MyTextInput(controller: null, hintText: 'Search Deliveries by product', 
                        width: screenWidth(context, percent: 0.68),),
                      MyButton(text: 'Search', callback: (){}),
                    ],
                  )
                ],
              ),
            ),
          ),

          body: Padding(
            padding: const EdgeInsets.all(8.0).add(EdgeInsets.only(left: 12, right: 12)),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: screenWidth(context, percent: 0.8),
                    child: Divider(
                      color: Colors.grey.withOpacity(0.6),
//                height: 2,
                      thickness: 1.0,
                    ),
                  ),

                  YMargin(10),

                  Expanded(
                    child: SizedBox(
                      width: screenWidth(context, percent: 0.74),
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: 4,
                        itemBuilder: (ctx, index) => Container(
                          width: screenHeight(context, percent: 0.7),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,

//                      mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                'Your package with code NXB3SX$index has being delivered to Mr. Obianuju.',
                                style: GoogleFonts.raleway(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),

                              YMargin(8),

                              SizedBox(
                                width: screenWidth(context, percent: 1),
                                child: Text(
                                  'Tue 22/04/2020 12:30PM',
                                  style: GoogleFonts.raleway(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.blueGrey),
                                ),
                              ),

                              YMargin(20)
                            ],
                          ),
                        ),
                      ),
                    ),
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
