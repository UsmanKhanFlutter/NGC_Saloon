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

Widget appBar() {
  return SizedBox(
    height: 60.h,
    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Image.asset("assets/images/drawericon.png"),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 12),
          child: Image.asset(
            "assets/images/saloonlogo.png",
            height: 60.h,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            children: [
              Image.asset("assets/images/global.png"),
              SizedBox(
                width: 2.sp,
              ),
              Text(
                "ENG",
                style: textStyle(9.sp, Colors.black, "poppin"),
              ),
              const Icon(
                Icons.arrow_drop_down,
                color: Colors.black,
              )
            ],
          ),
        )
      ],
    ),
  );
}

Widget topContainer(String title) {
  return Container(
      width: double.infinity,
      height: 16.h,
      color: AppColor.pinkcolor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 10.w,
          ),
          Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 9.h,
          ),
          SizedBox(
            width: 5.w,
          ),
          Text(
            title,
            style: textStyle(9.h, Colors.white, "poppin"),
          )
        ],
      ));
}