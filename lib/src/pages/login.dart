import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String nombre = "";
  String email = "";
  String password = "";
  String url = 'http://192.168.0.14:8008/api/v1/security/login';

  Future<String> getresp(String username, String password) async {
    Map<String, dynamic> loginbody = {
      "username": username,
      "password": password,
    };
    String body = jsonEncode(loginbody);
    Map<String, String> headers = {
      "Accept": "application/json",
      "Content-Type": "application/json"
    };
    var resp = await http.post(url, body: body, headers: headers);

    Map<String, dynamic> responseMap = jsonDecode(resp.body);
    print(responseMap["message"]);
    if (responseMap["message"] == 'Authentication OK') {
      Navigator.pushNamed(context, 'sesion');
    } else {
      Alerta(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
      children: <Widget>[
        _crearInput(),
        Divider(),
        _crearPassword(),
        Divider(),
        FlatButton(
          onPressed: () {
            getresp(nombre, password);
          },
          child: Text('Ingresar'),
          color: Colors.red,
        )
      ],
    );
  }

  Widget _crearInput() {
    return TextField(
      textCapitalization: TextCapitalization.none,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        counter: Text('Palabras: ${nombre.length}'),
        suffixIcon: Icon(Icons.insert_emoticon),
        hintText: 'Nombre de Usuario',
        labelText: 'Usuario',
        icon: Icon(Icons.keyboard),
      ),
      onChanged: (valor) {
        setState(() {
          nombre = valor;
        });
      },
    );
  }

  Widget _crearPassword() {
    return TextField(
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        counter: Text('Palabras: ${password.length}'),
        suffixIcon: Icon(Icons.lock_outline),
        hintText: 'Contrasena',
        labelText: 'Password',
        icon: Icon(Icons.keyboard),
      ),
      onChanged: (valor) {
        setState(() {
          password = valor;
        });
      },
    );
  }

  void Alerta(BuildContext context) {
    showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Error'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Usuario o password incorrecto'),
              ],
            ),
            elevation: 10.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            actions: <Widget>[
              FlatButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Ok')),
            ],
          );
        });
  }
}
