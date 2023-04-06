import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:webprofil/appList.dart';
import 'package:webprofil/flutterWeb.dart';
import 'package:webprofil/homePage.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webprofil/homePage.dart';

class aboutMe extends StatelessWidget {
  const aboutMe({super.key});

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

  CV() async {
    const url =
        'https://drive.google.com/file/d/1lokofk5mYbQxmhUl-r2OHtyMRLiCTuKD/view?usp=sharing';
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
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Color(0xFFfef6e4),
              ),
              Column(
                children: [
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
                        Spacer(
                          flex: 10,
                        ),
                        //AppList
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => appList()));
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
                    margin: EdgeInsetsDirectional.only(top: 30),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('image/profil1.jpg'),
                            fit: BoxFit.fitHeight)),
                    height: 200,
                  ),
                  GestureDetector(
                    onTap: () {
                      CV();
                    },
                    child: Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "Download my Resume",
                        style: TextStyle(
                          color: Color(0xFF001858),
                          fontSize: 17,
                          fontFamily: 'Neue',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsetsDirectional.only(top: 20),
                    child: Text(
                      "Hello, I'm Nara",
                      style: TextStyle(
                        color: Color(0xFF001858),
                        fontSize: 35,
                        fontFamily: 'Neue',
                      ),
                    ),
                  ),
                  Container(
                    color: Color(0xFFfef6e4),
                    padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                    child: Text(
                      "    Hello, My Name is Kadek Narayana, I've been working with Flutter Since February 2022, and Currently, I'm Developing an Application to control Nutrition intake to Human Body and also in the process of learning Tensorflow lite to be applied to the flutter application. I'm also experienced in Website Quality Assurance and Bussiness Management.",
                      style: TextStyle(
                        color: Color(0xFF172c66),
                        fontSize: 25,
                        fontFamily: 'roboto2',
                      ),
                    ),
                  ),
                  Container(
                    color: Color(0xFFfef6e4),
                    padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
                    child: Text(
                      "    Since there are some experiences and positions that I've been in throughout my career , I can not update them all the time here on my website. To check them, please refer to my LinkedIn profile and my Resume.",
                      style: TextStyle(
                        color: Color(0xFF172c66),
                        fontSize: 25,
                        fontFamily: 'roboto',
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Spacer(
                        flex: 30,
                      ),
                      //icon
                      GestureDetector(
                        onTap: () {
                          Instagram();
                        },
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('image/iconig.png'),
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
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('image/icongt.png'),
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
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('image/iconin.png'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Spacer(
                        flex: 30,
                      )
                    ],
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
