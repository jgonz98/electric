/// `IEEE PROJECT: ELECTRIC`

import 'package:flutter/material.dart';
import 'screens/announcements.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "IEEE Mobile Application",
        //Announcements page.
        //Only seen if the user is signed in.
        /*
        - Shows all events in reverse chronological order
        (Today on top, past underneath)
        - Uses filters by type via gesture detector
        - Announcement tiles should have:
          + Event type
          + Event header
          + Event description
          + Event Supporting Image
        - Drawer to direct to multiple pages and handle navigation
        - App Bar should contain event search and user account tab, which navigate.
        */
        home: Announcements());
  }
}
