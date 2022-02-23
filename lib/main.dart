import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/drawer.dart_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Drawer.com',
      themeMode: ThemeMode.dark,
      //darkTheme: ThemeData(brightness: Brightness.dark),
      home: Drawer(),
    );
  }
}

class Drawer extends StatefulWidget {
  const Drawer({Key? key}) : super(key: key);

  @override
  _DrawerState createState() => _DrawerState();
}

class _DrawerState extends State<Drawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyDrawer'),
        centerTitle: true,
      ),
      body: Center(
          child: Container(
        child: Text('wellcome to the drawer screen'),
      )),
      drawer: (MyDrawer()),
    );
  }
}
