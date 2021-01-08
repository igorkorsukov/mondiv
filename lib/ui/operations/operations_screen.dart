import 'package:flutter/material.dart';
import '../drawer/main_drawer.dart';

class OperationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Operations Screen'),
        ),
        drawer: MainDrawer(),
        body: new Center(
          child: new Text("Operations Screen"),
        ));
  }
}
