import 'package:fakeflix_app/src/pages/login.dart';
import 'package:fakeflix_app/webapi.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fakeflix',
          style: TextStyle(color: Colors.red),),
        leading: Icon(Icons.movie),
      ),
      body: Login()
    );
}

  
  }
