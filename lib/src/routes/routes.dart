import 'package:fakeflix_app/src/pages/home_page.dart';
import 'package:fakeflix_app/src/pages/main_menu.dart';
import 'package:fakeflix_app/src/pages/sesion.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'menu': (BuildContext context) => MainMenuPage(),
    'sesion': (BuildContext context) => SesionPage(),
  };
}
