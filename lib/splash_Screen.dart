// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saloon/Home/bottom_nav_bar.dart';
import 'package:saloon/Home/home_page.dart';
import 'package:saloon/Login/login_page.dart';
import 'package:saloon/globals/ui_widget.dart';
import 'package:saloon/globals/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.only(bottom: 100.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login/Sign up",
                style: textStyle(18.sp, Colors.black, "poppin"),
              ),
              SizedBox(
                height: 80.h,
              ),
              Image.asset("assets/images/saloonlogo.png"),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                width: 350.w,
                child: Row(
                  children: [
                    Text(
                      "Number",
                      style: textStyle(12.sp, Colors.blue.shade900, "poppin"),
                    )
                  ],
                ),
              ),
              Container(
                height: 40.h,
                width: 350.w,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.shade900)),
                child: Center(
                    child: Row(
                  children: [
                    Container(
                      height: 40.h,
                      width: 50.w,
                      color: Colors.grey[200],
                      child: Center(
                        child: Text(
                          "+92",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    SizedBox(
                        height: 40.h,
                        width: 297.w,
                        child: const TextField(
                          keyboardType: TextInputType.numberWithOptions(),
                          decoration: InputDecoration(
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              contentPadding: EdgeInsets.all(8),
                              hintText: "Mobile number e.g 3001234567",
                              hintStyle: TextStyle(color: Colors.black38)),
                        ))
                  ],
                )),
              ),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BottomNavBar()));
                  },
                  child: Container(
                    height: 40.h,
                    width: 350.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.r),
                        color: Colors.orange),
                    child: Center(
                      child: Text(
                        "Continue",
                        style: TextStyle(fontSize: 15.sp, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
