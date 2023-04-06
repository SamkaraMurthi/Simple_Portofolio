import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:webprofil/homePage.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webprofil/appList.dart';
import 'package:webprofil/aboutMe.dart';

class flutterWeb extends StatelessWidget {
  const flutterWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Stack(children: [
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => homePage()));
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => flutterWeb()));
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
          Row(
            children: [
              SizedBox(
                width: 200,
                height: 200,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 20,
                  child: Stack(children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          image: DecorationImage(
                              image: AssetImage('image/web.png'),
                              fit: BoxFit.cover)),
                      height: 100,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 106, 20, 20),
                      child: Center(
                        child: Column(
                          children: [
                            Text("Simple Web Portofolio",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFf272343),
                                  fontSize: 20,
                                  fontFamily: 'Neue',
                                )),
                            Container(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => homePage()));
                              },
                              child: Text("Visit Web",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFf272343),
                                    fontSize: 20,
                                    fontFamily: 'Neue',
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
              )
            ],
          ),
        ]),
      ]),
    ]));
  }
}
