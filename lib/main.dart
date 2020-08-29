import 'package:electric/viewmodels/announcementArticleListViewModel.dart';
import 'package:flutter/material.dart';
import 'Screens/announcements.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project: electric',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //Firestore instance tracker to see if user is logged in
      //via the cloud
      home: StreamBuilder(
        stream: Firestore.instance.collection('electric-ieee').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const Text('Loading...');
          return Announcements();
          //passing data to our announcement manager from main. (snapshot)
        },
      ),
    );
  }
}
