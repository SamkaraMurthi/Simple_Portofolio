import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:webprofil/main.dart';
import 'package:webprofil/appList.dart';
import 'package:webprofil/aboutMe.dart';
import 'package:url_launcher/url_launcher.dart';
import 'flutterWeb.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});
  Instagram() async {
    const url = 'https://www.instagram.com/ichipravda/';
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  Github() async {
    const url = 'https://github.com/SamkaraMurthi';
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  Linkedin() async {
    const url = 'https://www.linkedin.com/in/kadek-narayana-b80b0a255/';
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('image/bg.jpg'), fit: BoxFit.cover),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFFf9f4ef), Color(0xFFf9f4ef)])),
          ),
          Center(
            child: SizedBox(
                width: 300,
                height: 500,
                child: Card(
                  color: Color(0xFF020826),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 20,
                  child: Stack(children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                    ),
                    Container(
                      margin: EdgeInsetsDirectional.only(top: 30),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('image/profil1.jpg'),
                              fit: BoxFit.fitHeight)),
                      height: 150,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(
                          20, MediaQuery.of(context).size.height * 0.3, 20, 20),
                      child: Center(
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => aboutMe()));
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
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => appList()));
                              },
                              child: Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Text("Apps List",
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Neue',
                                      color: Color(0xFffffffe),
                                      fontSize: 20,
                                    )),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => flutterWeb()));
                              },
                              child: Container(
                                margin: EdgeInsets.only(top: 20),
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
                            Container(
                              margin: EdgeInsets.only(top: 50),
                              child: Text("Follow Me on Social Media",
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Neue',
                                    color: Color(0xFffffffe),
                                    fontSize: 20,
                                  )),
                            ),
                            Container(
                              width: 20,
                              height: 20,
                            ),
                            Row(
                              children: [
                                Spacer(
                                  flex: 40,
                                ),
                                //icon
                                GestureDetector(
                                  onTap: () {
                                    Instagram();
                                  },
                                  child: Container(
                                    width: 17,
                                    height: 17,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage('image/iconig.png'),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                                Spacer(
                                  flex: 7,
                                ),

                                GestureDetector(
                                  onTap: () {
                                    Github();
                                  },
                                  child: Container(
                                    width: 17,
                                    height: 17,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage('image/icongt.png'),
                                            fit: BoxFit.cover)),
                                  ),
                                ),

                                Spacer(
                                  flex: 7,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Linkedin();
                                  },
                                  child: Container(
                                    width: 17,
                                    height: 17,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage('image/iconin.png'),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                                Spacer(
                                  flex: 40,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ]),
                )),
          ),
        ],
      ),
    );
  }
}
