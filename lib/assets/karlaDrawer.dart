import 'package:flutter/material.dart';
import 'package:electric/Screens/emmaAbout.dart';

class KarlaDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('More'),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
            ),
          ),
          ListTile(
            title: Text('Apply For Membership'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              null; //TODO
            },
          ),
          ListTile(
            title: Text('Projects'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context); //TODO
            },
          ),
          ListTile(
            title: Text('Sign in to event'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context); //TODO
            },
          ),
          ListTile(
            title: Text('About'),
            onTap: () {
              Navigator.of(context).push(_createRoute()); //TODO
            },
          ),
          ListTile(
            title: Text('Contact Us'),
            onTap: () {
              Navigator.pop(context); //TODO
            },
          ),
        ],
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => AboutScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
