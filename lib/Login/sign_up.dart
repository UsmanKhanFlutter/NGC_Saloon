import 'package:flutter/material.dart';
import 'package:saloon/globals/UI_widgets.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saloon/globals/colors.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/SplashScreen.png"),
                  fit: BoxFit.fill)),
          child: Center(
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
                Container(
                  height: 44.h,
                  width: 276.w,
                  color: AppColor.pinkcolor,
                  child: Center(
                    child: Text(
                      "GET STARTED",
                      style: textStyle(20.sp, Colors.white, "poppin"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
