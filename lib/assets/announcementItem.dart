import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnnouncementItem extends StatelessWidget {
  final String type;
  final String header;
  final String body;

  AnnouncementItem({this.type, this.header, this.body});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double screenWidth = size.width;

    return ClipRect(
      child: Container(
        height: 200,
        width: screenWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Banner(
          location: BannerLocation.topStart,
          message: type, //this.type
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
                            width: screenWidth,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('lib/assets/images/GM.jpg'),
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
                                header, //this.header
                                textAlign: TextAlign.center,
                                textScaleFactor: 2,
                                style: GoogleFonts.lobster(fontSize: 13.5),
                              ),
                            ),
                            height: 200,
                            width: screenWidth,
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
                                  stops: [
                                    0.0,
                                    1.0
                                  ]),
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
                            child: Text(body, style: GoogleFonts.varelaRound()),
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
    );
  }
}
