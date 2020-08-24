import 'package:flutter/material.dart';
import 'package:cameraApp/Ui/home.dart';
import 'package:cameraApp/Ui/loginPage.dart';
import 'package:cameraApp/Ui/regesterPage.dart';
import 'package:cameraApp/utiles/user_toDatabase.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      home: new LoginPage(),
      routes: <String,WidgetBuilder>{
        '/landingpage': (BuildContext context)=>new MyApp(),
        '/register': (BuildContext context)=>new RegisterPage(),
        '/home': (BuildContext context)=>new Home(),
      },
    );
  }
}
