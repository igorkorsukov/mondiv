import 'package:flutter/material.dart';
import 'package:mondiv/ui/screens.dart';
import 'package:mondiv/enterprise/setup.dart';

void main() {
  setupServices();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mondiv',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      initialRoute: '/input',
      routes: {
        '/input': (context) => InputScreen(),
        '/dashboard': (context) => DashboardScreen(),
        '/operations': (context) => OperationsScreen(),
      },
      home: InputScreen(),
    );
  }
}
