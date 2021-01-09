import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mondiv/enterprise/operations_service.dart';
import 'package:mondiv/warp/actions_dispatcher.dart';
import 'package:mondiv/warp/async/asyncable.dart';
import '../drawer/main_drawer.dart';

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> with Asyncable {
  String _value = "";
  String _inputValue = "";

  @override
  void initState() {
    super.initState();

    _value = OperationsService.instance.sumValue();
    print("Input Screen initState");
    OperationsService.instance.sumChanged().onReceive(
        this,
        (newVal) => setState(() {
              _value = newVal;
            }));
  }

  @override
  void dispose() {
    unsubscribe();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Screen'),
      ),
      drawer: MainDrawer(),
      body: Center(
          child: Column(children: <Widget>[
        Text("Value: $_value"),
        TextField(
          decoration: InputDecoration(border: InputBorder.none, hintText: 'Enter value'),
          onChanged: (text) {
            _inputValue = text;
          },
        ),
      ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          actionsDispatcher().dispatchWithData("add_expense", [_inputValue]);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
