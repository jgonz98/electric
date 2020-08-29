import 'package:electric/assets/announcementItem.dart';
import 'package:electric/viewmodels/announcementArticleListViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../assets/karlaDrawer.dart';
import 'account.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:electric/assets/announcementStaticData.dart';

class Announcements extends StatefulWidget {
  @override
  _AnnouncementsState createState() => _AnnouncementsState();
}

List<Widget> currentAnnouncementList = [];

class _AnnouncementsState extends State<Announcements> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final String dt = 'electric';

  void getPostsData() {
    List<dynamic> inputAnnouncementList = ANNOUNCEMENT_DATA;
    List<Widget> updaterList = [];
    inputAnnouncementList.forEach(
      (post) {
        updaterList.add(
          ClipRect(
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Banner(
                location: BannerLocation.topStart,
                message: post['type'], //this.type
                color: Colors.blueAccent.withOpacity(.6),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 6,
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  height: 200,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'lib/assets/images/GM.jpg'),
                                    ),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20)),
                                  ),
                                ),
                                Container(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(5, 25, 5, 0),
                                    child: Text(
                                      post['header'], //this.header
                                      textAlign: TextAlign.center,
                                      textScaleFactor: 2,
                                      style:
                                          GoogleFonts.lobster(fontSize: 13.5),
                                    ),
                                  ),
                                  height: 200,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20)),
                                    color: Colors.grey[400],
                                    gradient: LinearGradient(
                                      begin: FractionalOffset.topCenter,
                                      end: FractionalOffset.bottomCenter,
                                      colors: [
                                        Colors.transparent.withOpacity(0.0),
                                        Colors.grey[400],
                                      ],
                                      stops: [0.0, 1.0],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                color: Colors.grey[400],
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                              ),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  child: Text(post['body'],
                                      style: GoogleFonts.varelaRound()),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
    setState(() {
      currentAnnouncementList = updaterList;
    });
  }

  @override
  void initState() {
    //"onload" widget function.
    super.initState(); //super ==> above all. all children
    getPostsData(); //gets our data.
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double filterHeight = size.height * 0.30;
    return SafeArea(
      child: Container(
        //color: Colors.blueGrey[800],
        child: Scaffold(
          key: _scaffoldKey,
          drawer: KarlaDrawer(),
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey,
              ),
              onPressed: () => _scaffoldKey.currentState.openDrawer(),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                onPressed: null, //TODO
              ),
              IconButton(
                icon: Icon(
                  Icons.person_outline,
                  color: Colors.grey,
                ),
                onPressed: () =>
                    Navigator.of(context).push(_createRoute()), //TODO
              )
            ],
          ),
          body: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                //Filters
                Container(
                  height: filterHeight,
                  color: Colors.white,
                  child: ListView(
                    padding: EdgeInsets.only(
                      top: 8,
                      bottom: 8,
                    ),
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        child: FlatButton(
                          child: Center(
                            child: Text('Meetings'),
                          ),
                          onPressed: () => null,
                        ),
                        height: filterHeight * .9,
                        width: 150,
                        decoration: BoxDecoration(
                          boxShadow: [
                            new BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10.0,
                            )
                          ],
                          color: Colors.blue[400],
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: filterHeight * .9,
                        width: 150,
                        decoration: BoxDecoration(
                          boxShadow: [
                            new BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10.0,
                            )
                          ],
                          color: Colors.green[400],
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: filterHeight * .9,
                        width: 150,
                        decoration: BoxDecoration(
                          boxShadow: [
                            new BoxShadow(
                              color: Colors.grey,
                              blurRadius: 100,
                            )
                          ],
                          color: Colors.orange[300],
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: filterHeight * .9,
                        width: 150,
                        decoration: BoxDecoration(
                          boxShadow: [
                            new BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10.0,
                            )
                          ],
                          color: Colors.red[400],
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                      ),
                    ],
                  ),
                ),
                //Articles
                Expanded(
                  child: Container(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Account(),
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
