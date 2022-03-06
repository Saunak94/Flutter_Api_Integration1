import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:apptest1/LandingPage.dart';
import 'package:apptest1/AddInfoPage.dart';

class SignUpPage extends StatefulWidget{
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage>{
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
                        'SIGN UP',
                        style: TextStyle(
                          color: Color(0xff000080),
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      SizedBox(height: 10),
                      buildUserName(),
                      buildEmail(),
                      buildMobile(),
                      buildPassword(),
                      buildConfirmPassword(),
                      SizedBox(height: 20),
                      buildSubmitBtn(context),
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

//UserName
Widget buildUserName(){
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
          keyboardType: TextInputType.name,
          style: TextStyle(
            color:Color(0xff000000),
          ),
          decoration: InputDecoration(
            border: InputBorder.none, // used to remove the link inside the textField
            contentPadding: EdgeInsets.only(top:15),
            prefixIcon: Icon(
              Icons.person,
              color: Colors.green,
            ),
            hintText: 'Name',
          ),
        ),
      )
    ],
  );
}
//Email
Widget buildEmail(){
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
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color:Color(0xff000000),
          ),
          decoration: InputDecoration(
            border: InputBorder.none, // used to remove the link inside the textField
            contentPadding: EdgeInsets.only(top:15),
            prefixIcon: Icon(
              Icons.alternate_email,
              color: Colors.green,
            ),
            hintText: 'Email',
          ),
        ),
      )
    ],
  );
}
//Mobile
Widget buildMobile(){
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
              Icons.mobile_friendly,
              color: Colors.green,
            ),
            hintText: 'Contact Number',
          ),
        ),
      )
    ],
  );
}
//Pwd
Widget buildPassword(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      /*Text(
        'Password',
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
          obscureText: true, // hide the text as pwd typed
          style: TextStyle(
            color:Color(0xff000000),
          ),
          decoration: InputDecoration(
            border: InputBorder.none, // used to remove the link inside the textField
            contentPadding: EdgeInsets.only(top:15),
            prefixIcon: Icon(
              Icons.lock_rounded,
              color: Colors.green,
            ),
            hintText: 'Password',
          ),
        ),
      )
    ],
  );
}
//Pwd
Widget buildConfirmPassword(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      /*Text(
        'Password',
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
          obscureText: true, // hide the text as pwd typed
          style: TextStyle(
            color:Color(0xff000000),
          ),
          decoration: InputDecoration(
            border: InputBorder.none, // used to remove the link inside the textField
            contentPadding: EdgeInsets.only(top:15),
            prefixIcon: Icon(
              Icons.lock_rounded,
              color: Colors.green,
            ),
            hintText: 'Confirm Password',
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
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => AddInfoPage()));
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