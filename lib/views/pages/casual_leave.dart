import 'package:flutter/material.dart';
import 'package:leave_management/myWidget/appbackground.dart';
import 'package:leave_management/myWidget/cardwidget.dart';
import 'package:leave_management/config/images.dart';
import 'package:leave_management/myWidget/loginbutton.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:leave_management/myWidget/appbackground.dart';
import 'package:leave_management/myWidget/badges.dart';
import 'package:leave_management/views/pages/login.dart';
import 'package:leave_management/views/templates/headernav.dart';
import '../../config/style.dart';
import 'package:leave_management/myWidget/leaveappbg.dart';

class casualleave extends StatefulWidget {
  @override
  _CasualPageState createState() => _CasualPageState();

}
enum colors { fn, an, efn, ean }
class _CasualPageState extends State<casualleave> {
  late TextEditingController textController;
  String? gender;
  colors _color = colors.fn;
  colors _colors = colors.efn;
  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return LeaveAppBackground(
      // child: Center(
      child: Container(
        child: Stack(
          children: <Widget>[
            Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: 35.0,
                  ),
                  Container(
                    child: headerBar(
                      context,
                      profilePic: UIImageData.menu,
                      name: "1",
                      notificationIcon: UIImageData.notification,
                      notificationCount: (5).toString(),
                      extraIcon: true,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    child: headerStyleLeave(
                      "CL", context,
                      headerLeave: "Casual Leave",
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
                    width: MediaQuery.of(context).size.width * 1.5,
                    height: MediaQuery.of(context).size.height * 0.75,
                    child: Container(
                      color: Color(0xffffff),
                      child: ListView(
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        // mainAxisSize: MainAxisSize.min,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        // textDirection: TextDirection.ltr,
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                                text: "Start date",
                                style: TextStyle(
                                    color: appStyle['mattBlack'] as Color, fontWeight: FontWeight.w400, fontSize: 20),
                                children: [
                                  TextSpan(
                                      text: ' *',
                                      style: TextStyle(
                                          color: appStyle['red'] as Color,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 25))
                                ]),
                          ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Align(
                                // alignment: AlignmentDirectional(-0.98, -0.45),
                                child: Container(
                                  width: MediaQuery.of(context).size.width * 0.45,
                                  height: MediaQuery.of(context).size.height * 0.07,
                                  child: TextFormField(
                                    controller: textController,
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      // hintStyle: FlutterFlowTheme.of(context).bodyText2,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: appStyle['mattGreen'] as Color,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(20.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: appStyle['mattGreen'] as Color,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(20.0),
                                      ),
                                    ),
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                    ),
                                    textAlign: TextAlign.justify,
                                    keyboardType: TextInputType.datetime,
                                    cursorColor: appStyle['mattGreen'] as Color,
                                  ),
                                ),
                              ),
                              flex: 8,
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment(2.00, -0.78),
                                child: Image.asset(UIImageData.leave_calendar,
                                  width: 30,
                                  height: 30,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              flex: 2,
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Flexible(
                                    child: ListTile(
                                      dense:true,
                                      contentPadding: EdgeInsets.only(left: 15.0, right: 0.0),
                                      title: const Text("FN"),
                                      // tileColor: Colors.pink[100],
                                      horizontalTitleGap: 0,
                                      leading: Radio<colors>(
                                        value: colors.fn,
                                        groupValue: _color,
                                        activeColor: appStyle['mattGreen'] as Color,
                                        onChanged: (colors? value){
                                          setState(() {
                                            _color = value??_color;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: ListTile(
                                      dense:true,
                                      contentPadding: EdgeInsets.only(left: 10.0, right: 0.0),
                                      title: const Text("AN",
                                        textAlign: TextAlign.center,
                                      ),
                                      // tileColor: Colors.pink[100],
                                      horizontalTitleGap: 0,
                                      leading: Radio<colors>(
                                        value: colors.an,
                                        groupValue: _color,
                                        activeColor: appStyle['mattGreen'] as Color,
                                        onChanged: (colors? value){
                                          setState(() {
                                            _color = value??_color;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              flex: 8,
                            ),
                          ],
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          RichText(
                            text: TextSpan(
                                text: "End date",
                                style: TextStyle(
                                    color: appStyle['mattBlack'] as Color, fontWeight: FontWeight.w400, fontSize: 20),
                                children: [
                                  TextSpan(
                                      text: ' *',
                                      style: TextStyle(
                                          color: appStyle['red'] as Color,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 25))
                                ]),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Align(
                                  // alignment: AlignmentDirectional(-0.98, -0.45),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width * 0.45,
                                    height: MediaQuery.of(context).size.height * 0.07,
                                    child: TextFormField(
                                      controller: textController,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        // hintStyle: FlutterFlowTheme.of(context).bodyText2,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: appStyle['mattGreen'] as Color,
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.circular(20.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: appStyle['mattGreen'] as Color,
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.circular(20.0),
                                        ),
                                      ),
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                      ),
                                      textAlign: TextAlign.justify,
                                      keyboardType: TextInputType.datetime,
                                      cursorColor: appStyle['mattGreen'] as Color,
                                    ),
                                  ),
                                ),
                                flex: 8,
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment(2.00, -0.78),
                                  child: Image.asset(UIImageData.leave_calendar,
                                    width: 30,
                                    height: 30,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                flex: 2,
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Flexible(
                                      child: ListTile(
                                        dense:true,
                                        contentPadding: EdgeInsets.only(left: 15.0, right: 0.0),
                                        title: const Text("FN"),
                                        // tileColor: Colors.pink[100],
                                        horizontalTitleGap: 0,
                                        leading: Radio<colors>(
                                          value: colors.efn,
                                          groupValue: _colors,
                                          activeColor: appStyle['mattGreen'] as Color,
                                          onChanged: (colors? value){
                                            setState(() {
                                              _colors = value??_colors;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      child: ListTile(
                                        dense:true,
                                        contentPadding: EdgeInsets.only(left: 10.0, right: 0.0),
                                        title: const Text("AN",
                                          textAlign: TextAlign.center,
                                        ),
                                        // tileColor: Colors.pink[100],
                                        horizontalTitleGap: 0,
                                        leading: Radio<colors>(
                                          value: colors.ean,
                                          groupValue: _colors,
                                          activeColor: appStyle['mattGreen'] as Color,
                                          onChanged: (colors? value){
                                            setState(() {
                                              _colors = value??_colors;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                flex: 8,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Row(
                          children: <Widget>[
                            RichText(
                            text: TextSpan(
                                text: "No of days",
                                style: TextStyle(
                                    color: appStyle['mattBlack'] as Color, fontWeight: FontWeight.w400, fontSize: 20),
                                ),
                            ),
                            SizedBox(
                              width: 78,
                            ),
                            RichText(
                              text: TextSpan(
                                text: "Emergency contact",
                                style: TextStyle(
                                    color: appStyle['mattBlack'] as Color, fontWeight: FontWeight.w400, fontSize: 20),
                                  children: [
                                    TextSpan(
                                        text: ' *',
                                        style: TextStyle(
                                            color: appStyle['red'] as Color,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 25))
                                  ]),
                            ),
                          ],
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Align(
                                  // alignment: AlignmentDirectional(-0.98, -0.45),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width * 0.45,
                                    height: MediaQuery.of(context).size.height * 0.07,
                                    child: TextFormField(
                                      controller: textController,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        // hintStyle: FlutterFlowTheme.of(context).bodyText2,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: appStyle['mattGreen'] as Color,
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.circular(20.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: appStyle['mattGreen'] as Color,
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.circular(20.0),
                                        ),
                                      ),
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                      ),
                                      textAlign: TextAlign.justify,
                                      keyboardType: TextInputType.number,
                                      cursorColor: appStyle['mattGreen'] as Color,
                                    ),
                                  ),
                                ),
                                flex: 5,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Expanded(
                                child: Align(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width * 0.50,
                                    height: MediaQuery.of(context).size.height * 0.07,
                                    child: TextFormField(
                                      controller: textController,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        // hintStyle: FlutterFlowTheme.of(context).bodyText2,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: appStyle['mattGreen'] as Color,
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.circular(20.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: appStyle['mattGreen'] as Color,
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.circular(20.0),
                                        ),
                                      ),
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                      ),
                                      textAlign: TextAlign.justify,
                                      keyboardType: TextInputType.number,
                                      cursorColor: appStyle['mattGreen'] as Color,
                                    ),
                                  ),
                                ),
                                flex: 6,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          RichText(
                            text: TextSpan(
                                text: "Reason",
                                style: TextStyle(
                                    color: appStyle['mattBlack'] as Color, fontWeight: FontWeight.w400, fontSize: 20),
                                children: [
                                  TextSpan(
                                      text: ' *',
                                      style: TextStyle(
                                          color: appStyle['red'] as Color,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 25))
                                ]),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Align(
                                  // alignment: AlignmentDirectional(-0.98, -0.45),
                                  child: Container(
                                    // width: MediaQuery.of(context).size.width * 2.0,
                                    // height: MediaQuery.of(context).size.height * 1.07,
                                    child: TextFormField(
                                      controller: textController,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        // hintStyle: FlutterFlowTheme.of(context).bodyText2,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: appStyle['mattGreen'] as Color,
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.circular(20.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: appStyle['mattGreen'] as Color,
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.circular(20.0),
                                        ),
                                      ),
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                      ),
                                      minLines: 6,
                                      maxLines: null,
                                      textAlign: TextAlign.justify,
                                      keyboardType: TextInputType.multiline,
                                      cursorColor: appStyle['mattGreen'] as Color,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Align(
                                  // alignment: AlignmentDirectional(-0.98, -0.45),
                                  child:
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
                                        //   // Navigator.push(
                                        //   //   context,
                                        //   //   MaterialPageRoute(builder: (context) => OverView()),
                                        //   // );
                                      },
                                      child: applybutton(),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
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

