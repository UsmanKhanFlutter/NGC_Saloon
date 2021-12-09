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
            prefixIcon: Icon(
              icon,
              color: iconcolor,
            ),
            enabledBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: hintText,
            hintStyle: textStyle(13.sp, Colors.white, "myriadpro")),
      ));
}

Widget appBar(VoidCallback onpressed) {
  return Container(
    color: Colors.white,
    height: 60.h,
    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: InkWell(
              onTap: onpressed,
              child: Stack(
                children: [
                  Container(
                    height: 40.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                        color: AppColor.pinkcolor, shape: BoxShape.circle),
                  ),
                  Positioned(
                    left: 25.w,
                    top: 30.h,
                    child: Container(
                      height: 10.h,
                      width: 10.w,
                      child: Image.asset(
                        "assets/images/drawericon.png",
                        height: 2.h,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.grey[300], shape: BoxShape.circle),
                    ),
                  )
                ],
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 35),
          child: Image.asset(
            "assets/images/saloonlogo.png",
            height: 40.h,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            children: [
              const Icon(
                Icons.location_on_outlined,
                color: Colors.black38,
              ),
              SizedBox(
                width: 2.sp,
              ),
              Text(
                "Pakistan",
                style: textStyle(14.sp, Colors.black54, "poppinbold"),
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
