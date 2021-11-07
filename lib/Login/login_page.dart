import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saloon/Login/sign_up.dart';
import 'package:saloon/globals/UI_widgets.dart';
import 'package:saloon/globals/colors.dart';
import 'package:flutter_switch/flutter_switch.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool keepLogin = false;
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
                              builder: (context) => SignUpPage()));
                    },
                    child: Container(
                      height: 44.h,
                      width: 276.w,
                      decoration: BoxDecoration(
                          color: AppColor.pinkcolor,
                          borderRadius: BorderRadius.circular(4.r)),
                      child: Center(
                        child: Text(
                          "LOG IN",
                          style: textStyle(20.sp, Colors.white, "poppin"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Container(
                    width: 276.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
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
                                "Keep Logged In",
                                style: textStyle(10.sp, Colors.white, "poppin"),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "Forgot Password",
                          style: textStyle(10.sp, Colors.white, "poppin"),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Text(
                    "CREATE ACCOUNT",
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
      ),
    );
  }
}
