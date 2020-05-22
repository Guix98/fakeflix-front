import 'package:fakeflix_app/src/pages/home_page.dart';
import 'package:fakeflix_app/src/pages/sesion.dart';
import 'package:flutter/material.dart';
Map <String, WidgetBuilder> getAplicationRoutes(){
  return <String, WidgetBuilder>{
      '/'         :( BuildContext context)=> HomePage(),
      'sesion'     :( BuildContext context)=> SesionPage(),
      
      };

}