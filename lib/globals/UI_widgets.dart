import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saloon/globals/colors.dart';

textStyle(double fontSize, Color textcolor, String font) {
  return TextStyle(fontSize: fontSize, color: textcolor, fontFamily: font);
}

Widget textfield(String hintText, IconData icon, Color iconcolor) {
  return Container(
      width: 276.w,
      height: 40.h,
      color: AppColor.textfieldColor,
      child: TextField(
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(top: 8, right: 60),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Icon(
                icon,
                color: iconcolor,
              ),
            ),
            enabledBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: hintText,
            hintStyle: textStyle(13.sp, Colors.white, "myriad")),
      ));
}
