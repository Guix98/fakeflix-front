import 'package:fakeflix_app/widgets/options.dart';
import 'package:flutter/material.dart';

class MainMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          child: ListTile(
              title: Text("Usuarios"),
              leading: Icon(Icons.supervised_user_circle),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {}),
          margin: EdgeInsets.only(bottom: 10, top: 25, right: 5, left: 5),
        ),
        Card(
          child: ListTile(
              title: Text("Pedidos"),
              leading: Icon(Icons.assignment),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pushNamed(context, 'sesion');
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
