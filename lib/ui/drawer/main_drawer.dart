import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.green,
            ),
          ),
          ListTile(
            leading: Icon(Icons.calculate_outlined),
            title: Text('Input'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/input');
            },
          ),
          ListTile(
            leading: Icon(Icons.insert_chart_outlined),
            title: Text('Dashboard'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/dashboard');
            },
          ),
          ListTile(
            leading: Icon(Icons.list_alt_outlined),
            title: Text('Operations'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/operations');
            },
          ),
        ],
      ),
    );
  }
}
