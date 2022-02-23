import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);
  @override
  _DrawerState createState() => _DrawerState();
}

class _DrawerState extends State<MyDrawer> {
  final img =
      'https://static.theprint.in/wp-content/uploads/2021/11/babar-azam.jpg';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10,
      child: Container(
        color: Colors.blue,
        child: ListView(children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  //decoration: BoxDecoration(color: Colors.lightGreen),
                  margin: EdgeInsets.zero,
                  accountName: Text('Noorullah'),
                  accountEmail: Text('noorullah@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(img),
                  ))),
          ListTile(
              title: Text('Home',
                  style: TextStyle(color: Colors.white), textScaleFactor: 1.0),
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              )),
          ListTile(
              title: Text('profile',
                  style: TextStyle(color: Colors.white), textScaleFactor: 1.0),
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.black,
              )),
          ListTile(
              title: Text('Email Me',
                  style: TextStyle(color: Colors.white), textScaleFactor: 1.0),
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.black,
              ))
        ]),
      ),
    );
  }
}
