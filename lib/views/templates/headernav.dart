import 'package:leave_management/config/app_lang.dart';
import 'package:leave_management/config/images.dart';
import 'package:leave_management/config/style.dart';
import 'package:leave_management/views/pages/login.dart';
import 'package:leave_management/views/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:leave_management/myWidget/badges.dart';
import 'package:leave_management/views/functions.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

// @override
// clearNotifyList() {
//   clearNotificationsList();
// }

Widget headerBar(
    context, {
      String? scopepageIcon,
      String? overviewpageIcon,
      String? notificationIcon,
      String profilePic =
      'https://png.pngtree.com/png-vector/20190223/ourlarge/pngtree-vector-avatar-icon-png-image_695765.jpg',
      String name = '',
      String data = '',
      bool extraIcon = false,
      bool scope = false,
      bool notifyIcon = true,
      bool profileFlag = true,
      String notificationCount = '',
    }) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // scope?GestureDetector(
              //   onTap: () {
              //     Navigator.pop(context);
              //   },
              //   // child: Image(
              //   //   image: AssetImage(UIImageData.back_arrow),
              //   //   width: 26.0,
              //   //   height: 26.0,
              //   // ),
              // ):SizedBox(),
              GestureDetector(
                // onTap: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => ProfileWidget(),
                //     ),
                //   );
                // },
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Login(),
                    ),
                  );
                },
                child: Container(
                  child:Text('Logout',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      color: appStyle['primaryWhiteColor'] as Color,
                      fontSize: 14,
                    ),),
                  // width: 22.0,
                  // height: 22.0,
                  // decoration: new BoxDecoration(
                  //   image: new DecorationImage(
                  //     fit: BoxFit.fill,
                  //     image: AssetImage(profilePic),
                  //   ),

                  // ),

                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 10.0,
                  ),
                  child: Column(
                    children: <Widget>[
                      // Align(
                      //   alignment: Alignment.topLeft,
                      //   child: Text(
                      //     ucwords("e") + '$name',
                      //     textAlign: TextAlign.left,
                      //     style: userheading,
                      //   ),
                      // ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          data,
                          textAlign: TextAlign.center,
                          style: headerSubhead,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // extraIcon
              //     ? GestureDetector(
              //   onTap: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) =>
              //         scope ? OverView() : ScopeLayout(),
              //       ),
              //     );
              //   },
              //   child: Image(
              //     image: AssetImage(scopepageIcon),
              //     width: 28.0,
              //     height: 28.0,
              //   ),
              // )
              //     : Text(""),
              // SizedBox(width: 23.0),
              // GestureDetector(
              //   onTap: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => OverView(),
              //       ),
              //     );
              //   },
              //   child: Image(
              //     image: AssetImage(overviewpageIcon),
              //     width: 18.0,
              //     height: 20.0,
              //   ),
              // ),

              notifyIcon
                  ? GestureDetector(
                // onTap: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => NotificationPage(''),
                //     ),
                //   );
                // },

                child:  notificationCount != '0' ? Badge(
                  top: 0,
                  right: 1,
                  value: notificationCount,
                  child:
                  Image(
                    image: AssetImage(UIImageData.notification),
                    width: 28.0,
                    height: 28.0,
                  ),
                ) : Image(
                  image: AssetImage(UIImageData.notification),
                  width: 28.0,
                  height: 28.0,
                ),
              )
                  : SizedBox(),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget headerStyleTwo(
    String title,
    BuildContext context, {
      bool icon = true,
      String? iconpath,
      bool subheading = false,
      String? subtitle,
      bool menuIcon = false,
      String buttonName = '',
      bool profileFlag = false,
      bool switchOrg = false,
      bool scope = true,
    }) {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 20.0),
          child: Row(
            children: <Widget>[
              scope ? GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                // child: Image(
                //   image: AssetImage(UIImageData.back_arrow),
                //   width: 26.0,
                //   height: 26.0,
                // ),
              ):
              // GestureDetector(
              //   onTap: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(builder: (context) => OverView()),
              //     );
              //   },
              //   child: Image(
              //     image: AssetImage(UIImageData.back_arrow),
              //     width: 26.0,
              //     height: 26.0,
              //   ),
              // ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: switchOrg ? EdgeInsets.only(left: 63.0) : buttonName == 'Clear all' ? EdgeInsets.only(left: 47.0) : EdgeInsets.only(left: 0.0),
                      child: Align(
                        alignment: Alignment.center,
                        child:Text(
                          title,
                          textAlign: TextAlign.center,
                          style: centerheading,
                        ),
                      ),
                    ),
                    subheading
                        ? Container(
                      child: Text(
                        '"$subtitle"',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 11.0,
                          color: appStyle["primaryWhiteColor"] as Color,
                        ),
                      ),
                    )
                        : SizedBox(),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => ChooseOrganization()),
                  // );
                },
                // child: switchOrg ? Image(
                //   image: AssetImage(UIImageData.settingIcon),
                //   width: 26.0,
                //   height: 26.0,
                // ): SizedBox(),
              ),
              SizedBox(width: 20.0,),
              // GestureDetector(
              //   onTap: () {
              //     Logout(){
              //       setSP('access_token', null);
              //       setSP('organization', null);
              //       DefaultCacheManager().emptyCache();
              //       Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),),);
              //     }
              //     // buttonName == "Logout"
              //     //   ? setSP('access_token', null) : SizedBox();
              //     // buttonName == "Logout"
              //     //     ? setSP('organization', null) : SizedBox();
              //     buttonName == "Logout"
              //         ? Logout()
              //         : Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>NotificationPage('delete')));
              //   },
              //   child: icon
              //       ? Image(
              //     image: AssetImage(iconpath),
              //     width: 22.0,
              //   )
              //       : Text(
              //     buttonName,
              //     style: TextStyle(
              //       color: appStyle["primaryWhiteColor"],
              //     ),
              //   ),
              // ),
              // menuIcon
              //     ? PopupMenuButton(
              //         icon: Align(
              //           alignment: Alignment.centerRight,
              //           child: Icon(
              //             Icons.more_vert,
              //             color: Colors.white,
              //           ),
              //         ),
              //         itemBuilder: (context) => [
              //           PopupMenuItem(
              //             child: Text("Settings"),
              //             value: 0,
              //           ),
              //           PopupMenuItem(
              //             child: Text("Flutter.io"),
              //             value: 1,
              //           ),
              //           PopupMenuItem(
              //             child: Text("Google.com"),
              //             value: 2,
              //           ),
              //         ],
              //       )
              //     : SizedBox(),
            ],
          ),
        ),
      ],
    ),
  );
}
Widget headerStyleLeave(
    String title,
    BuildContext context, {
      required String headerLeave,
    }) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // scope?GestureDetector(
              //   onTap: () {
              //     Navigator.pop(context);
              //   },
              //   // child: Image(
              //   //   image: AssetImage(UIImageData.back_arrow),
              //   //   width: 26.0,
              //   //   height: 26.0,
              //   // ),
              // ):SizedBox(),
              GestureDetector(
                // onTap: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => ProfileWidget(),
                //     ),
                //   );
                // },
                child: Container(
                  width: 13.0,
                  height: 18.0,
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(UIImageData.back),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 10.0,
                  ),
                  child: Column(
                    children: <Widget>[
                      // Align(
                      //   alignment: Alignment.topLeft,
                      //   child: Text(
                      //     ucwords("e") + '$name',
                      //     textAlign: TextAlign.left,
                      //     style: userheading,
                      //   ),
                      // ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          headerLeave,
                          // textAlign: TextAlign.center,
                          style: headerMain,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // extraIcon
              //     ? GestureDetector(
              //   onTap: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) =>
              //         scope ? OverView() : ScopeLayout(),
              //       ),
              //     );
              //   },
              //   child: Image(
              //     image: AssetImage(scopepageIcon),
              //     width: 28.0,
              //     height: 28.0,
              //   ),
              // )
              //     : Text(""),
              // SizedBox(width: 23.0),
              // GestureDetector(
              //   onTap: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => OverView(),
              //       ),
              //     );
              //   },
              //   child: Image(
              //     image: AssetImage(overviewpageIcon),
              //     width: 18.0,
              //     height: 20.0,
              //   ),
              // ),

              GestureDetector(
                // onTap: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => NotificationPage(''),
                //     ),
                //   );
                // },
                  child:
                  Image(
                    image: AssetImage(UIImageData.home),
                    width: 25.0,
                    height: 25.0,
                  ),
                ),
            ],
          ),
        ),
      ],
    ),
  );
}
