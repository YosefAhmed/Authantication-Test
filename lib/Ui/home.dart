import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          leading: FlatButton(
            child: Text("Logout"),
            color: Colors.deepPurple,
            textColor: Colors.white,
            onPressed: () {
              FirebaseAuth.instance.signOut().then((value) {
                Navigator.of(context).pushReplacementNamed('/landingpage');
              }).catchError((e) {
                print(e);
              });
            },
          ),
        ),
      ),
    );
  }
}
