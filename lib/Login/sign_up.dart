import 'package:flutter/material.dart';
import 'package:saloon/Home/Bottom_Nav_Bar.dart';
import 'package:saloon/globals/ui_widget.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saloon/globals/colors.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:saloon/sociallogin/social_login.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool keepLogin = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/SplashScreen.png"),
                fit: BoxFit.fill)),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/saloonlogo.png"),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "All Salons Just a Click Away",
                  style: textStyle(24.sp, Colors.white, "myriad"),
                ),
                SizedBox(
                  height: 60.h,
                ),
                textfield("GENDER", Icons.person, Colors.white),
                SizedBox(
                  height: 20.h,
                ),
                textfield("PHONE   NUMBER", Icons.phone, Colors.white),
                SizedBox(
                  height: 20.h,
                ),
                textfield("PASSWORD", Icons.lock, Colors.white),
                SizedBox(
                  height: 40.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BottomNavBar()));
                  },
                  child: Container(
                    height: 44.h,
                    width: 276.w,
                    decoration: BoxDecoration(
                        color: AppColor.pinkcolor,
                        borderRadius: BorderRadius.circular(4.r)),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          "GET STARTED",
                          style: textStyle(20.sp, Colors.white, "poppin"),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                SizedBox(
                  width: 276.w,
                  child: Row(
                    children: [
                      FlutterSwitch(
                        inactiveColor: Colors.grey.shade300,
                        activeColor: Colors.grey.shade300,
                        width: 35.w,
                        height: 12.h,
                        toggleSize: 10.h,
                        value: keepLogin,
                        borderRadius: 30.0,
                        padding: 2.0,
                        toggleColor: Colors.white,
                        switchBorder: Border.all(
                          color: Colors.white,
                          width: 1.0,
                        ),
                        onToggle: (val) {
                          print(val);
                          setState(() {
                            keepLogin = val;
                          });
                        },
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        "Remember Password",
                        style: textStyle(10.sp, Colors.white, "poppin"),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        SocialLogin().signInwithGoogle();
                      },
                      child: Container(
                        height: 42.h,
                        width: 47.w,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage("assets/images/google.png"),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    Container(
                      height: 42.h,
                      width: 47.w,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/images/facebook.png"),
                              fit: BoxFit.fill)),
                    ),
                    Container(
                      height: 42.h,
                      width: 47.w,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/images/insta.png"),
                              fit: BoxFit.fill)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "LOGIN",
                  style: textStyle(18.sp, Colors.white, "poppin"),
                ),
                Text(
                  "NEED HELP?",
                  style: textStyle(18.sp, Colors.white, "poppin"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
