// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:saloon/globals/ui_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saloon/globals/colors.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/contactbackground.png"),
                fit: BoxFit.fill)),
        child: Column(
          children: [
            topContainer("Contact Us"),
            SizedBox(
              height: 45.h,
            ),
            Text(
              "CONTACT US TODAY!",
              style: textStyle(26.sp, Colors.black, "poppinbold"),
            ),
            SizedBox(
              height: 25.h,
            ),
            contactTextfield("E N T E R  Y O U R  N A M E"),
            SizedBox(
              height: 15.h,
            ),
            contactTextfield("E N T E R  Y O U R  E M A I L"),
            SizedBox(
              height: 15.h,
            ),
            Container(
              height: 268.h,
              width: 320.w,
              color: Colors.white,
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 30),
                    enabledBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintText: "T Y P E  Y O U R  M E S S A G E",
                    hintStyle:
                        textStyle(13.sp, AppColor.textfieldColor, "myriad")),
              ),
            ),
            SizedBox(
              height: 35.h,
            ),
            Container(
              height: 45.h,
              width: 308.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3.r),
                  color: AppColor.pinkcolor),
              child: Center(
                child: Text("SUBMIT",
                    style: textStyle(24.sp, Colors.white, "poppin")),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

Widget contactTextfield(String hinttext) {
  return Container(
    height: 45.h,
    width: 320.w,
    color: Colors.white,
    child: Row(
      children: [
        Container(
            height: 44.h,
            width: 270.w,
            child: TextField(
              decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 30),
                  hintText: hinttext,
                  hintStyle:
                      textStyle(13.sp, AppColor.textfieldColor, "myriad")),
            )),
        Container(
          height: 45.h,
          width: 43.20.h,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/pink.png"),
                  fit: BoxFit.fill)),
          child: const Center(
            child: Icon(
              Icons.edit,
              color: Colors.white,
            ),
          ),
        )
      ],
    ),
  );
}
