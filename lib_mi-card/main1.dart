import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            // mainAxisSize: MainAxisSize.min
            // verticalDirection: VerticalDirection.down, //default i.e. top to bottom
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //.start;.centre;.end from main axis
            //.spaceEvenly to get equal space from the top bottom and between the containers
            //.spaceBetween to get equal space only in between
            crossAxisAlignment:
                CrossAxisAlignment.end, //perpendicular to main axis
            //.stretch to stretch all 3 containers to the entire width
            //or use width to double.infinity for all containers

            children: [
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.white,
                child: Text('Container 1'),
              ),
              SizedBox(
                  height:
                      30.0), //can be used to give spacing between the boxes ;// arguments are (height and width)
              Container(
                width: 300.0,
                height: 100.0,
                color: Colors.blue,
                child: Text('Container 2'),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.red,
                child: Text('Container 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
