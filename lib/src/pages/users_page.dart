import 'dart:convert';

import 'package:flutter/material.dart';

import '../token.dart';
import 'package:http/http.dart' as http;

class UsersPage extends StatefulWidget {
  UsersPage({Key key}) : super(key: key);

  @override
  _UsersPageState createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  String url = 'http://192.168.0.14:8008/api/v1/user';
  Future<List<Widget>> getresp() async {
    final Authn token = ModalRoute.of(context).settings.arguments;
    Map<String, String> headers = {
      "Accept": "application/json",
      "Authorization": "bearer " + token.authentication
    };
    var resp = await http.get(url, headers: headers);

    List<dynamic> responseMap = jsonDecode(resp.body);

    print(responseMap[0]["username"]);
    List<Widget> users = [];
    responseMap.forEach((element) {
      final tile = ListTile(
        title: Text(element["username"]),
      );
      users.add(Card(child: tile));
    });
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Usuarios"),
        ),
        body: FutureBuilder(
            future: getresp(),
            builder:
                (BuildContext context, AsyncSnapshot<List<Widget>> snapshot) {
              if (snapshot.hasData) {
                List<dynamic> data = snapshot.data;

                return ListView(
                  children: data,
                );
              } else
                return Text("Algo esta mal");
            }));
  }
}
