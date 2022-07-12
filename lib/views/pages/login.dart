import 'package:leave_management/config/style.dart';
import 'package:flutter/material.dart';
import 'package:leave_management/config/app_lang.dart';
import 'package:leave_management/views/functions.dart';
import 'package:leave_management/myWidget/appbackground.dart';
import 'package:leave_management/myWidget/cardwidget.dart';
import 'package:leave_management/myWidget/inputweget.dart';
import 'package:leave_management/myWidget/loginbutton.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:leave_management/config/images.dart';
import 'package:leave_management/views/pages/home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late String email, password;
  final _formKey = GlobalKey<FormState>();
  void initState() {
    super.initState();
  }
  memberLogin(email, password) async {
    print(email);
    print(password);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Home()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      // child: Center(
        child: ListView(
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          children: <Widget>[
            SizedBox(
              height: 30.0,
            ),
            Image(
              image: AssetImage(UIImageData.logo),
              width: 165.0,
              height: 103.0,

            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0),
              width: MediaQuery.of(context).size.width,
              height: 338.0,
              child: cardWidgetlogin(
                Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      InputFiled(
                        labelName: ucwords(
                          'Username',
                        ),
                        inputType: TextInputType.emailAddress,
                        value: (String value) {
                          email = value;
                          // setState(() {});
                        },
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      InputFiled(
                        labelName: ucwords(
                          'Password',
                        ),
                        inputType: TextInputType.visiblePassword,
                        value: (String value) {
                          password = value;
                          // setState(() {});
                        },
                      ),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment(0.9, 1),
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Text(
                              "Forget Password",
                              style: TextStyle(
                                  // decoration: TextDecoration.underline,
                                  color: Colors.blue
                              )
                          ),
                          // onTap: () async {
                          //   const url = 'https://www.google.com';
                          //   if (await canLaunch(url)) launch(url);
                          // },
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      InkWell(
                        // onTap: () async {
                        //   if (_formKey.currentState.validate()) {
                        //     Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //           builder: (context) => ChooseOrganization()),
                        //     );
                        //
                        //   }
                        // },
                        onTap: () async {
                          memberLogin(email, password);
                        //   // Navigator.push(
                        //   //   context,
                        //   //   MaterialPageRoute(builder: (context) => OverView()),
                        //   // );
                        },
                        child: button(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.only(
                // left: 86.0,
                right: 30.0,
              ),
              // child: Row(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: <Widget>[
              //     Text(
              //       getLang('loginbtstrip'),
              //       style: loginAskLabel,
              //     ),
              //   ],
              // ),
            ),
          ],
        ),
      // ),
    );
  }
}
