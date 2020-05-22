import 'package:flutter/material.dart';
class SesionPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bienvenido')),
      body: ListView(
        children: <Widget>[
          ListTile(title: Text('Usuario 1'), subtitle: Text('Desc'),),
          Divider(),
          ListTile(title: Text('Usuario 1'), subtitle: Text('Desc'),),
          Divider(),
          ListTile(title: Text('Usuario 1'), subtitle: Text('Desc'),),
          Divider(),
          ListTile(title: Text('Usuario 1'), subtitle: Text('Desc'),),
          Divider(),
        ],
      )
      );
    
  }
}