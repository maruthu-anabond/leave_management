import 'dart:convert';
import 'dart:io';
// import 'package:leave_management/controllers/toastMessage.dart';
import 'package:leave_management/config/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void showToast(String msg, BuildContext context,
    {int duration = 1, int gravity = 0}) {

}

// getDefaultColor(double percent) {
//   Color progresscolors;
//   if (percent <= 25.0) {
//     return progresscolors = appStyle['progresslow'];
//   } else if (percent >= 25.0 && percent <= 50.0) {
//     return progresscolors = appStyle['progressmedium'];
//   } else if (percent >= 50.0 && percent <= 75.0) {
//     return progresscolors = appStyle['progresshigh'];
//   } else if (percent >= 75.0) {
//     return progresscolors = appStyle['progressveryhigh'];
//   }
// }

// getDefaultSmileyImage(double percent) {
//   if (percent <= 25.0) {
//     return UIImageData.smileLow;
//   } else if (percent >= 25.0 && percent <= 50.0) {
//     return UIImageData.smileNormal;
//   } else if (percent >= 50.0 && percent <= 75.0) {
//     return UIImageData.smileMedium;
//   } else if (percent >= 75.0) {
//     return UIImageData.smileSuccess;
//   }
// }

void showSnackBar(BuildContext context, String message) async {
  final snackBar = SnackBar(content: Text(message));
  ScaffoldMessenger.of(context).showSnackBar((snackBar));
}

// Future<bool> saveBackgroundImage() async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   if (prefs.getString('bg') == null) {
//     return prefs.setString("bg", UIImageData.appbg);
//   }
// }

Widget loader() => Container(
  alignment: Alignment.center,
  // height: double.infinity,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.max,
    children: [
      Container(
        alignment: Alignment.center,
        child: SpinKitDoubleBounce(
          color: Color(0xff288b77),
          size: 50.0,
        ),

        // child: CircularProgressIndicator(

        //   valueColor:

        //       AlwaysStoppedAnimation<Color>(appStyle['primaryTextColor']),

        // ),
      ),
    ],
  ),
);

setSP(String key, String bg) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString(key, bg);
}

// addBG(String bg) async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   return prefs.setString("uploadbg", bg);
// }



toDouble(dynamic value) =>
    value == null ? null : double.parse(value.toString());



bool isImageUrlCheck(String value) {
  bool _validURL = true;
  if (_validURL && value.contains('.png')) {
    return true;
  }
  if (_validURL && value.contains('.jpg')) {
    return true;
  }
  return false;
}

Image imageFromBase64String(String base64String) {
  return Image.memory(
    base64Decode(base64String),
    fit: BoxFit.cover,
  );
}

String timeAgo(DateTime d) {
  Duration diff = DateTime.now().difference(d);
  if (diff.inDays > 365)
    return "${(diff.inDays / 365).floor()} ${(diff.inDays / 365).floor() == 1 ? "year" : "years"} ago";
  if (diff.inDays > 30)
    return "${(diff.inDays / 30).floor()} ${(diff.inDays / 30).floor() == 1 ? "month" : "months"} ago";
  if (diff.inDays > 7)
    return "${(diff.inDays / 7).floor()} ${(diff.inDays / 7).floor() == 1 ? "week" : "weeks"} ago";
  if (diff.inDays > 0)
    return "${diff.inDays} ${diff.inDays == 1 ? "day" : "days"} ago";
  if (diff.inHours > 0)
    return "${diff.inHours} ${diff.inHours == 1 ? "hour" : "hours"} ago";
  if (diff.inMinutes > 0)
    return "${diff.inMinutes} ${diff.inMinutes == 1 ? "minute" : "minutes"} ago";
  return "just now";
}

allWordsCapitilize(String str) {
  return str.toLowerCase().split(' ').map((word) {
    String leftText = (word.length > 1) ? word.substring(1, word.length) : '';
    return word[0].toUpperCase() + leftText;
  }).join(' ');
}
