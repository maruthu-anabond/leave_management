import 'package:flutter/material.dart';

const appStyle = {
  // FontFamily
  'fontFamily': 'Roboto',
  //Colors list
  'primaryWhiteColor': Color(0xffFFFFFF),
  'primaryTextColor': Color(0xff2E3374),
  'secondaryColor': Color(0xff5E86E5),
  'headersubtext': Color(0xccffffff),
  'lightGray': Color(0xff707070),
  'shorttitle': Color(0xff9799ba),
  'tablistbgcolor': Color(0xffF6F7FF),
  'coreBgColor': Color(0xffe7edfb),
  'primaryclasscolor': Color(0xff63C89C),
  'orange': Colors.green,
  'primaryBack': Color(0xFFE8F5E9),
  'dropdowncolor': Color(0xff191B37),
  'arrowcolor': Color(0xff3346AF),
  'secondaryBack': Color(0xFFFFF3E0),
  'secondaryText': Color(0xFFFFB74D),
  'searchcolor': Color(0xffc0cff4),
  'searchborder': Color(0xffA5BAEF),
  //Fonts Style
  // 'primarylargesize': 25.0,
  // 'primarymediumsize': 22.0,
  // 'primarysmallsize': 20.0,
  // 'secondarylargesize': 19.0,
  'secondarymediumsize': 18.0,
  'secondaryprovaluesize': 17.0,
  'secondarysmallsize': 16.0,
  'lowlevelFilter': 15.0,
  'lowlevellarge': 13.0,
  'lowlevellargesubtitle': 14.0,
  'responsTeam': 13.0,
  'lowlevelmedium': 12.0,
  'lowlevelsmall': 11.0,
  'lowlevelextrasmall': 10.0,

  //Border Color
  'borderColor': Color(0xffe2e2e2),
};

// ThemeData appThemeData = ThemeData(
//   primaryColor: Color(0xff2E3374),
//   cardColor: Colors.white,
//   fontFamily: 'segoeui',
//   textTheme: TextTheme(
//     body1: TextStyle(
//       color: Color(0xff2E3374),
//     ),
//     body2: TextStyle(
//         color: Color(0xff2E3374),
//         // fontSize: appStyle['fontSize'],
//         fontWeight: FontWeight.w400),
//   ),
// );
var userheading = TextStyle(
  fontSize: 18.0,
  color: Color(0xffFFFFFF),
  fontWeight: FontWeight.w400,
);
var headerSubhead = TextStyle(
  fontSize: 10.0,
  color: Color(0xccffffff),
  fontWeight: FontWeight.w400,
);
var headerMain = TextStyle(
  fontSize: 20.0,
  color: Color(0xffFFFFFF),
  fontWeight: FontWeight.w700,
);
var centerheading = TextStyle(
  fontSize: appStyle['secondarymediumsize'] as double,
  color: appStyle['primaryWhiteColor'] as Color,
  fontWeight: FontWeight.w600,
);
var inputValueStyle = TextStyle(
  fontSize: 16.0,
  color: Color(0xff707070),
  fontWeight: FontWeight.w400,
);
var loginmainLabel = TextStyle(
  fontSize: 11.0,
  color: Color(0xff707070),
  fontWeight: FontWeight.w400,
);
var loginButton = TextStyle(
  // fontFamily: 'Roboto',
  fontSize: 15.0,
  color: const Color(0xff288b77),
  fontWeight: FontWeight.w700,
);
String ucwords(String input) {
  if (input == null) {
    throw new ArgumentError("string: $input");
  }
  if (input.length == 0) {
    return input;
  }
  return input[0].toUpperCase() + input.substring(1);
}
