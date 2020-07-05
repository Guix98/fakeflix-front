import 'package:flutter/material.dart';

class SesionPage extends StatefulWidget {
  @override
  _SesionPageState createState() => _SesionPageState();
}

class _SesionPageState extends State<SesionPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fakeflix',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, accentColor: Colors.red),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: "Pagados", icon: Icon(Icons.payment)),
                Tab(text: "Preparados", icon: Icon(Icons.assignment_turned_in)),
                Tab(text: "Despachados", icon: Icon(Icons.airport_shuttle)),
                Tab(
                    text: "Entregados",
                    icon: Icon(Icons.sentiment_very_satisfied)),
              ],
            ),
            title: Text('Pedidos'),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.payment),
              Icon(Icons.assignment_turned_in),
              Icon(Icons.airport_shuttle),
              Icon(Icons.sentiment_very_satisfied)
            ],
          ),
        ),
      ),
    );
  }

  Widget pagados() {
    return ListView(
      padding: EdgeInsets.all(8),
      children: <Widget>[
        ListTile(),
      ],
    );
  }
}
