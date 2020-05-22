//import 'package:components/src/pages/home_temp.dart';
import 'package:fakeflix_app/src/pages/home_page.dart';
import 'package:fakeflix_app/src/routes/routes.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fakeflix',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(  brightness: Brightness.dark,
      accentColor: Colors.red
    
  ),
      initialRoute: '/',
      routes: getAplicationRoutes(),
      onGenerateRoute: (settings){
        print(settings.name);
        return MaterialPageRoute(
          builder: (BuildContext context)=> HomePage()
          );
      },
      
    );
  }
}