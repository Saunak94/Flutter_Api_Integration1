import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'SignUpPage.dart';
import 'LandingPage.dart';

class LoginScreen extends StatefulWidget{
@override
_loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<LoginScreen>{

@override
  Widget build(BuildContext context) {
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
                        'Welcome',
                        style: TextStyle(
                            color: Color(0xff000080),
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Text(
                        'Continue to Login',
                        style: TextStyle(
                          color: Color(0xff000080),
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      SizedBox(height: 10),
                      buildEmail(),
                      SizedBox(height: 20),
                      buildMobile(),
                      SizedBox(height: 20),
                      buildPassword(),
                      buildForgotPassBtn(),
                      buildRememberMe(),
                      buildLoginBtn(),
                      SizedBox(height: 20),
                      buildSignupBtn(context),
                      SizedBox(height: 20),
                      buildSkipBtn(context),
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

  bool isRememberMe = false;
//Remember Password
  Widget buildRememberMe(){
  return Container(
    alignment: Alignment.centerLeft,
    child: TextButton(
        onPressed: ()=> print("Remeber me"),
        child: Row(
          children: <Widget>[
            Theme(
                data: ThemeData(unselectedWidgetColor: Colors.blueAccent),
                child: Checkbox(
                    value: isRememberMe,
                    onChanged: (value){
                      setState(() {
                        isRememberMe = value!;
                      });
                    },
                ),
            ),
            Text(
              'Remember Me',
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 10,
                  fontWeight: FontWeight.bold
              ),
            ),
          ],
        )
    ),
  );
}

}

 //Email
Widget buildEmail(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
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
            autofillHints: [AutofillHints.email], //Email will be provided by the system
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
//Forgot Password
Widget buildForgotPassBtn(){
  return Container(
    alignment: Alignment.centerRight,
    child: TextButton(
      onPressed: ()=> print("Forgot Password"),
      child: Text(
          'Forget Password ?',
          style: TextStyle(
          color: Colors.green,
          fontSize: 10,
          fontWeight: FontWeight.bold
        ),
      ),
    ),
  );
}
//loginButton
Widget buildLoginBtn(){
  return Container(
    width: double.infinity,
    child: ElevatedButton(
      onPressed: ()=> print("Login Button Pressed"),
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
        'LOGIN',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
  ),
  );
}
//Sign Up Button
Widget buildSignupBtn(BuildContext context){
  return Container(
    width: double.infinity,
    child: ElevatedButton(
      onPressed: () {
        print("Signup Button Pressed");
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => SignUpPage()));
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
        'SIGN UP',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
//Forgot Password
Widget buildSkipBtn(BuildContext context){
  return Container(
    alignment: Alignment.center,
    child: TextButton(
      onPressed: () {
        print("Skip Button from Login Pressed");
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => LandingPage()));
      },
      child: Text(
        'Skip to Main Page',
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