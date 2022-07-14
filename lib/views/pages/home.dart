import 'package:flutter/material.dart';
import 'package:leave_management/myWidget/appbackground.dart';
import 'package:leave_management/myWidget/cardwidget.dart';
import 'package:leave_management/config/images.dart';
import 'package:leave_management/myWidget/loginbutton.dart';
import 'package:adobe_xd/pinned.dart';

// import './Notification.dart';
import 'package:adobe_xd/page_link.dart';

// import './Profile.dart';
// import './PendingApprovals2.dart';
// import './Calender.dart';
// import './LeaveHistory4.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:leave_management/myWidget/appbackground.dart';
import 'package:leave_management/myWidget/badges.dart';
import 'package:leave_management/views/pages/login.dart';
import 'package:leave_management/views/pages/HomeScreen13.dart';
import 'package:leave_management/views/templates/headernav.dart';

import '../../config/style.dart';

class Home extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  logout() async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Login()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      child: Container(
        child: Stack(
          children: <Widget>[
            Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: 80.0,
                  ),
                  Container(
                    child: headerBar(
                      context,
                      profilePic: 'assets/images/menu.png',
                      name: "1",
                      notificationIcon: UIImageData.notification,
                      notificationCount: (5).toString(),
                      extraIcon: true,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        margin: EdgeInsets.only(bottom: 20.0, top: 40.0),
                        child: cardWidget(
                          Container(
                            margin: EdgeInsets.only(top: 30.0, bottom: 10.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Maruthu U",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                ),
                                InkWell(
                                  onTap: () async {
                                    logout();
                                    //   // Navigator.push(
                                    //   //   context,
                                    //   //   MaterialPageRoute(builder: (context) => OverView()),
                                    //   // );
                                  },
                                  child: Container(
                                    width: 100,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      borderRadius:
                                          BorderRadius.circular(105.0),
                                      border: Border.all(
                                          width: 3.0,
                                          color: const Color(0xff288b77)),
                                      // gradient: LinearGradient(
                                      //     colors: [Color(0xff2E3374), Color(0xff5E86E5)],
                                      //     begin: Alignment.centerRight,
                                      //     end: Alignment.centerLeft),
                                    ),
                                    child: Text(
                                      'Logout',
                                      style: loginButton,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () async {
                                    logout();
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomeScreen13()),
                                    );
                                  },
                                  child: Text(
                                    'HOME',
                                    style: loginButton,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: -2.0,
                        left: 0.0,
                        right: 0.0,
                        child: Center(
                          child: Container(
                            width: 110.0,
                            height: 110.0,
                            alignment: Alignment.center,
                            child: Card(
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              child: Container(
                                padding: EdgeInsets.all(5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Stack(
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                          child: Image(
                                            image: AssetImage('assets/images/profile.png'),
                                            fit: BoxFit.cover,
                                            width: 90.0,
                                            height: 90.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
