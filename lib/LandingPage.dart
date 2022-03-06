import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LandingPage extends StatefulWidget{
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>{
@override
  Widget build(BuildContext context){
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xffffd700),
                            Color(0xffffff66),
                            Color(0xfffff68f),
                            Color(0xfffff00),
                          ]
                      )
                  ),
                  child: SingleChildScrollView(
                    physics: AlwaysScrollableScrollPhysics(), // helps to scroll the Tables
                    padding: EdgeInsets.symmetric(
                        horizontal:20,
                        vertical: 100
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Welcome to Landing Page',
                          style: TextStyle(
                            color: Color(0xff000080),
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        buildIcon1(),

                      ],
                    ),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}

//Icon1 Button
Widget buildIcon1( ){
  return Container(
    width: 100,
    height: 100,
    child: ElevatedButton.icon(
      onPressed: () {
        print("buildIcon1");
      },
      icon: Icon(Icons.plumbing),
      label: Text('plumber'),
      style: ElevatedButton.styleFrom(
          primary: Colors.black12,//Box Color
          side: BorderSide(color: Colors.black),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // <-- Radius
          )
        //shape: StadiumBorder()
        //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      ),

    ),
  );
}