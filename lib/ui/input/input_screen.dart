import 'package:flutter/material.dart';
import '../drawer/main_drawer.dart';

class InputScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Screen'),
      ),
      drawer: MainDrawer(),
      body: new Center(
        child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none, hintText: 'Enter value')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
