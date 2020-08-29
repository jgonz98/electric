//import 'package:electric2/Assets/Announcements/announcementScrollList.dart';
//import 'package:electric2/Assets/Announcements/filterScrollList.dart';
import 'package:flutter/material.dart';

import 'account.dart';
//import 'package:google_fonts/google_fonts.dart';

class Announcements extends StatefulWidget {
  @override
  _AnnouncementsState createState() => _AnnouncementsState();
}

class _AnnouncementsState extends State<Announcements> {
  final Color ieeeBlue = Color(0xFF00629B);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: ieeeBlue),
            onPressed: () => null, //Navigates to search engine page
          ),
          IconButton(
            icon: Icon(Icons.person, color: ieeeBlue),
            onPressed: () => null, //Navigates to account page
          ),
        ],
        title: Text(
          'IEEE Live Events',
          style: TextStyle(color: ieeeBlue),
        ),
        centerTitle: true,
        leading: IconButton(
          //Drawer button
          icon: Icon(Icons.menu, color: ieeeBlue),
          onPressed: () => null, //Opens drawer
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          //AnnouncementScrollList(),
          //FilterScrollList(),
        ],
      ),
    );
  }
}
