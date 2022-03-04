import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'loginPage.dart';

//Starting Point
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  //final dynamic title = 'Flutter Demo2';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: title,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        //primarySwatch: Colors.lightBlue,
      ),
      home: LoginScreen()

//      home: const MyHomePage(title:'Flutter Demo',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  //Function

  //Function Get User Data from API
  Future<List<User>> _getuserData() async{
    var authority = 'jsonplaceholder.typicode.com';
    var unencodedPath = 'users';
    var response = await http.get(Uri.https(authority, unencodedPath));
    var jsondata = jsonDecode(response.body);
    List<User> users = []; // empty list
    for(var u in jsondata) {
        User user = User(u["name"],u["email"],u["username"]);
        users.add(user);
      }
    print(users.length);
    return users;
  }

  //UI
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called,
    // for instance as done by the _incrementCounter method above.
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return MaterialApp(
      home:Scaffold(
        // * The Most Top Bar/Widget in the App
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Colors.lightBlueAccent,
        ), //appBar is used to specify its header user interface
        body: Container(
          child: Column(
            children: [
              Container(
                height: 400,
                child: Card(
                  child: FutureBuilder<List<User>>(
                    future: _getuserData(),
                    builder: (context,snapshot){
                      if(snapshot.data == null){
                        return Container(
                          child: Text('Loading...'),
                        );
                      }
                      else {
                        return ListView.builder(
                            itemCount: snapshot.data!.length,
                            itemBuilder: (context,i){
                              return ListTile(
                                title: Column(
                                  children: [
                                    Text(snapshot.data![i].name),
                                    SizedBox( height: 50,
                                        child: Card(child:Text(snapshot.data![i].username))
                                    )
                                  ],
                                ),
                              );
                            }
                        );
                      }
                    },
                  ),
                ),
              ),
              Container(
                height: 50,
                color:Colors.green,
              ),
              Container(
                height: 50,
                color:Colors.blueAccent
              )
            ],
          ),
        ),
      )
    );
  }
}

//New Class
class User {
  final String name, email, username;
  //Constructor
User(this.name,this.email,this.username);
}