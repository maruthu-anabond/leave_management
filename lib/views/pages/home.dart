import 'package:flutter/material.dart';
import 'package:leave_management/myWidget/appbackground.dart';
import 'package:leave_management/myWidget/cardwidget.dart';
import 'package:leave_management/config/images.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:leave_management/myWidget/appbackground.dart';
import 'package:leave_management/myWidget/badges.dart';
import 'package:leave_management/views/pages/login.dart';
import 'package:leave_management/views/templates/headernav.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../config/style.dart';
import 'package:leave_management/views/pages/casual_leave.dart';

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
        child: ListView(
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          children: <Widget>[
            Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: 5.0,
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
                        margin: EdgeInsets.only(bottom: 20.0, top: 33.0),
                        child: cardWidget(
                          Container(
                            margin: EdgeInsets.only(top: 30.0, bottom: 10.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "John Smith",
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.bold,
                                    fontSize:20,
                                    color:appStyle['mattGreen'] as Color,
                                  ),
                                ),
                                Text(
                                  "Senior Developer",
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: appStyle['mattGreen'] as Color,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "Total Limit - 45 days",
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w700,
                                        color: appStyle['mattBlack'] as Color,
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(width: 20), // give it width
                                    Text(
                                      "Leave Available - 40 days",
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w700,
                                        color: appStyle['mattGreen'] as Color,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],

                                ),
                                SizedBox(height: 15),
                                InkWell(
                                  onTap: () async {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => casualleave()),
                                      );
                                  },
                                child:CarouselSlider(
                                  options: CarouselOptions(height: 170.0),
                                  items: [1, 2, 3, 4, 5, 6].map((i) {
                                    return Builder(
                                      builder: (BuildContext context) {
                                        return Container(
                                          width: MediaQuery.of(context).size.width,
                                          margin: EdgeInsets.symmetric(horizontal: 2.0),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(25.0),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: const Color(0x29000000),
                                                  offset: Offset(0, 6),
                                                  blurRadius: 6,
                                                ),
                                              ],
                                              color: appStyle['primaryWhiteColor'] as Color

                                          ),
                                          child: Column(
                                            children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 5.0),
                                              child:Image(
                                              image: AssetImage(
                                                  i == 1? UIImageData.duty: i==2 ?UIImageData.permission: i==3?UIImageData.sickLeave:
                                              i==4?UIImageData.casualLeave:i==5? UIImageData.earnedLeave:UIImageData.maternity),
                                              width: 105.0,
                                              height:85.0,
                                            ),
                                            ),

                                            Text(
                                          i == 1? "On Duty": i==2 ?"Permission": i==3?"Sick Leave":
                                        i==4?"Casual Leave":i==5? "Earned Leave":"Maternity Leave",
                                            style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                            fontSize: 14,
                                            ),
                                            ),
                                              SizedBox(height: 10),
                                            Text(
                                              i == 1? "Days taken 03": i==2 ?"Available - 01hr": i==3?"Available - 14 days":
                                              i==4?"Available - 14 days":i==5? "Available - 14 days":"Available - 182 days",
                                              style: TextStyle(
                                                color: appStyle['mattGreen'] as Color,
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.w300,
                                                fontSize: 12,
                                              ),
                                            ),




                                          ],
                                          ),
                                        );
                                      },
                                    );
                                  }).toList(),
                                ),
                                ),
                                SizedBox(height: 25),
                                cardWidgetlogin(
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Image(
                                        image: AssetImage(UIImageData.report),
                                        width: 28.0,
                                        height: 28.0,
                                      ),
                                      Text('Pending request',
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w700,
                                          color: appStyle['mattBlack'] as Color,
                                          fontSize: 14,
                                        ),), // give it width
                                      Image(
                                        image: AssetImage(UIImageData.navig),
                                        width: 28.0,
                                        height: 28.0,
                                      ),
                                    ],

                                  ),
                                ),
                                cardWidgetlogin(
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Image(
                                        image: AssetImage(UIImageData.history),
                                        width: 28.0,
                                        height: 28.0,
                                      ),
                                      Text('Leave history',
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w700,
                                          color: appStyle['mattBlack'] as Color,
                                          fontSize: 14,
                                        ),), // give it width
                                      Image(
                                        image: AssetImage(UIImageData.navig),
                                        width: 28.0,
                                        height: 28.0,
                                      ),
                                    ],

                                  ),
                                ),
                                cardWidgetlogin(
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Image(
                                        image: AssetImage(UIImageData.calendar),
                                        width: 28.0,
                                        height: 28.0,
                                      ),
                                      Text('Leave calendar',
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w700,
                                          color: appStyle['mattBlack'] as Color,
                                          fontSize: 14,
                                        ),), // give it width
                                      Image(
                                        image: AssetImage(UIImageData.navig),
                                        width: 28.0,
                                        height: 28.0,
                                      ),
                                    ],

                                  ),
                                ),
                                // InkWell(
                                //   onTap: () async {
                                //     logout();
                                //     //   // Navigator.push(
                                //     //   //   context,
                                //     //   //   MaterialPageRoute(builder: (context) => OverView()),
                                //     //   // );
                                //   },
                                //   child: Container(
                                //     width: 100,
                                //     alignment: Alignment.center,
                                //     decoration: BoxDecoration(
                                //       color: const Color(0xffffffff),
                                //       borderRadius:
                                //           BorderRadius.circular(105.0),
                                //       border: Border.all(
                                //           width: 3.0,
                                //           color: const Color(0xff288b77)),
                                //       // gradient: LinearGradient(
                                //       //     colors: [Color(0xff2E3374), Color(0xff5E86E5)],
                                //       //     begin: Alignment.centerRight,
                                //       //     end: Alignment.centerLeft),
                                //     ),
                                //     child: Text(
                                //       'Logout',
                                //       style: loginButton,
                                //     ),
                                //   ),
                                // ),
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
                            width: 90.0,
                            height: 90.0,
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
                                            width: 70.0,
                                            height: 70.0,
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