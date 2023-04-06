import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webprofil/flutterWeb.dart';
import 'package:webprofil/aboutMe.dart';
import 'package:webprofil/main.dart';
import 'package:webprofil/homePage.dart';

class appList extends StatelessWidget {
  const appList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Color(0xFFfef6e4),
            ),
            Column(children: [
              Container(
                color: Color(0xFF0e172c),
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: Row(
                  children: [
                    Spacer(
                      flex: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => homePage()));
                      },
                      child: Container(
                        child: Text("Home Page",
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Neue',
                              color: Color(0xFffffffe),
                              fontSize: 20,
                            )),
                      ),
                    ),
                    //Home
                    Spacer(
                      flex: 10,
                    ),
                    //About Me
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => aboutMe()));
                      },
                      child: Container(
                        child: Text("About Me",
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Neue',
                              color: Color(0xFffffffe),
                              fontSize: 20,
                            )),
                      ),
                    ),
                    Spacer(
                      flex: 10,
                    ),
                    //AppList
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => appList()));
                      },
                      child: Container(
                        child: Text("App List",
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Neue',
                              color: Color(0xFffffffe),
                              fontSize: 20,
                            )),
                      ),
                    ),
                    Spacer(
                      flex: 10,
                    ),
                    //flutter Web
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => flutterWeb()));
                      },
                      child: Container(
                        child: Text("Flutter Web",
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Neue',
                              color: Color(0xFffffffe),
                              fontSize: 20,
                            )),
                      ),
                    ),
                    Spacer(
                      flex: 30,
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 200),
                child: Container(
                  child: Text("More Apps Coming Soon",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Neue',
                        color: Color(0xFF001858),
                        fontSize: 50,
                      )),
                ),
              ),
            ]),
          ],
        ),
      ]),
    );
  }
}
