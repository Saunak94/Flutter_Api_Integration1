import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:apptest1/LandingPage.dart';

class AddInfoPage extends StatefulWidget{
  @override
  _AddInfoPage createState() => _AddInfoPage();
}

class _AddInfoPage extends State<AddInfoPage>{
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
                          'Aditional Info',
                          style: TextStyle(
                            color: Color(0xff000080),
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        SizedBox(height: 10),
                        buildStreetAddress(),
                        buildCity(),
                        buildPicCode(),
                        SizedBox(height: 20),
                        buildSubmitBtn(context),
                        buildSkipBtn(context),
                        /*buildForgotPassBtn(),
                      buildRememberMe(),
                      buildLoginBtn(),
                      SizedBox(height: 20),
                      buildSignupBtn(),
                      SizedBox(height: 20),
                      buildSkipBtn(),
                       */
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

//StreetAddress
Widget buildStreetAddress(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      /*Text('',
        style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold
        ),
      ), */
      SizedBox(height: 20),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color:Color(0xffffffff),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color:Color(0xff000000),
                  blurRadius: 6,
                  offset: Offset(0,2)
              )
            ]
        ),
        height: 60,
        child:TextField(
          keyboardType: TextInputType.streetAddress,
          style: TextStyle(
            color:Color(0xff000000),
          ),
          decoration: InputDecoration(
            border: InputBorder.none, // used to remove the link inside the textField
            contentPadding: EdgeInsets.only(top:15),
            prefixIcon: Icon(
              Icons.location_city,
              color: Colors.green,
            ),
            hintText: 'Street Address',
          ),
        ),
      )
    ],
  );
}
//City
Widget buildCity(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      /*Text(
        '',
        style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold
        ),
      ), */
      SizedBox(height: 20),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color:Color(0xffffffff),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color:Color(0xff000000),
                  blurRadius: 6,
                  offset: Offset(0,2)
              )
            ]
        ),
        height: 60,
        child:TextField(
          keyboardType: TextInputType.streetAddress,
          style: TextStyle(
            color:Color(0xff000000),
          ),
          decoration: InputDecoration(
            border: InputBorder.none, // used to remove the link inside the textField
            contentPadding: EdgeInsets.only(top:15),
            prefixIcon: Icon(
              Icons.add_location_alt_outlined,
              color: Colors.green,
            ),
            hintText: 'City',
          ),
        ),
      )
    ],
  );
}
//PicCode
Widget buildPicCode(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      /*Text(
        '',
        style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold
        ),
      ),*/
      SizedBox(height: 20),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color:Color(0xffffffff),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color:Color(0xff000000),
                  blurRadius: 6,
                  offset: Offset(0,2)
              )
            ]
        ),
        height: 60,
        child:TextField(
          keyboardType: TextInputType.number,
          style: TextStyle(
            color:Color(0xff000000),
          ),
          decoration: InputDecoration(
            border: InputBorder.none, // used to remove the link inside the textField
            contentPadding: EdgeInsets.only(top:15),
            prefixIcon: Icon(
              Icons.pin_drop,
              color: Colors.green,
            ),
            hintText: 'Pic Code',
          ),
        ),
      )
    ],
  );
}
//Sign Up Button
Widget buildSubmitBtn(BuildContext context){
  return Container(
    width: double.infinity,
    child: ElevatedButton(
      onPressed: () {
        print("Signup Button Pressed");
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => LandingPage()));
      },
      style: ElevatedButton.styleFrom(
          primary: Colors.green,//Box Color
          side: BorderSide(color: Colors.black),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // <-- Radius
          )
        //shape: StadiumBorder()
        //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      ),
      child: Text(
        'Get Started',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

//Skip to Main Page
Widget buildSkipBtn(BuildContext context){
  return Container(
    alignment: Alignment.center,
    child: TextButton(
      onPressed: () {
        print("Skip Button from Login Pressed");
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => LandingPage()));
      },
      child: Text(
        'Skip',
        style: TextStyle(
          shadows: [
            Shadow(
                color: Colors.blueGrey,
                offset: Offset(0, -7)),
          ],
          color: Colors.transparent,
          fontSize: 15,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          decorationColor: Colors.blue,
          decorationThickness: 3,
          wordSpacing: 2,
          decorationStyle: TextDecorationStyle.dashed,

        ),
      ),
    ),
  );
}