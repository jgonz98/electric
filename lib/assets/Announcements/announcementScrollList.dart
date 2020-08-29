import 'package:flutter/material.dart';

class AnnouncementScrollList extends StatefulWidget {
  @override
  _AnnouncementScrollListState createState() => _AnnouncementScrollListState();
}

class _AnnouncementScrollListState extends State<AnnouncementScrollList> {
  List<Widget> fCOTS = []; //filter Currently On The Screen

  void getFilters() {
    return null;
  }

  @override
  void initState() {
    super.initState();
    getFilters();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      child: ListWheelScrollView(
        itemExtent: 5,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20, bottom: 20.0),
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Colors.white38,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20, bottom: 20.0),
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Colors.white38,
              child: Text('Hello'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20, bottom: 20.0),
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Colors.white38,
              child: Text('Hello'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20, bottom: 20.0),
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Colors.white38,
              child: Text('Hello'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20, bottom: 20.0),
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Colors.white38,
              child: Text('Hello'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20, bottom: 20.0),
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Colors.white38,
              child: Text('Hello'),
            ),
          ),
        ],
      ),
    );
  }
}
