import 'dart:convert';

import 'package:fakeflix_app/src/token.dart';
import 'package:fakeflix_app/widgets/options.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MainMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Authn token = ModalRoute.of(context).settings.arguments;
    String url = 'http://192.168.0.14:8008/api/v1/user';
    Future<void> getresp(String route) async {
      Map<String, String> headers = {
        "Accept": "application/json",
        "Authorization": "bearer " + token.authentication
      };
      var resp = await http.get(url, headers: headers);

      List<dynamic> responseMap = jsonDecode(resp.body);
      print(responseMap);
      if (resp.body.length > 0) {
        Navigator.pushNamed(context, route, arguments: token);
      } else {
        print("algo esta mal");
      }
    }

    return ListView(
      children: <Widget>[
        Card(
          child: ListTile(
              title: Text("Usuarios"),
              leading: Icon(Icons.supervised_user_circle),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                getresp('user');
              }),
          margin: EdgeInsets.only(bottom: 10, top: 25, right: 5, left: 5),
        ),
        Card(
          child: ListTile(
              title: Text("Pedidos"),
              leading: Icon(Icons.assignment),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pushNamed(context, 'sesion', arguments: token);
              }),
          margin: EdgeInsets.only(bottom: 10, top: 10, right: 5, left: 5),
        ),
        Card(
          child: ListTile(
              title: Text("Almacenes"),
              leading: Icon(Icons.store_mall_directory),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {}),
          margin: EdgeInsets.only(bottom: 10, top: 10, right: 5, left: 5),
        )
      ],
    );
  }

  List<Widget> optlist(BuildContext context) {
    return [
      ListTile(
          title: Text("Usuarios"),
          leading: Icon(Icons.supervised_user_circle),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {}),
      ListTile(
          title: Text("Pedidos"),
          leading: Icon(Icons.assignment),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            Navigator.pushNamed(context, 'sesion');
          }),
      ListTile(
          title: Text("Almacenes"),
          leading: Icon(Icons.store_mall_directory),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {}),
    ];
  }
}
