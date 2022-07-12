import 'package:leave_management/config/app_lang.dart';
import 'package:leave_management/config/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget button() {
  return Container(
    height: 52.0,
    width: 150.0,
    decoration: BoxDecoration(
      color: const Color(0xffffffff),
      borderRadius: BorderRadius.circular(55.0),
      border: Border.all(
          width: 3.0, color: const Color(0xff288b77)),
      // gradient: LinearGradient(
      //     colors: [Color(0xff2E3374), Color(0xff5E86E5)],
      //     begin: Alignment.centerRight,
      //     end: Alignment.centerLeft),
    ),
    child: Center(
      child: Text(
        'Sign In',
        style: loginButton,
      ),
    ),
  );
}
