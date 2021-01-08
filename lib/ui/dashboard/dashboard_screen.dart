import 'package:flutter/material.dart';
import '../drawer/main_drawer.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dashboard Screen'),
        ),
        drawer: MainDrawer(),
        body: new Center(
          child: new Text("Dashboard Screen"),
        ));
  }
}
