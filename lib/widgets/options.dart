import 'package:flutter/material.dart';

class OptionsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: optlist(context),
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
