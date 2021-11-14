import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saloon/Login/login_page.dart';
import 'package:saloon/globals/UI_widgets.dart';
import 'package:saloon/globals/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
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
                height: 90.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
                child: Container(
                  height: 40.h,
                  width: 188.w,
                  color: AppColor.pinkcolor,
                  child: Center(
                    child: Text(
                      "USER",
                      style: textStyle(20.sp, Colors.white, "poppin"),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                height: 40.h,
                width: 188.w,
                color: AppColor.pinkcolor,
                child: Center(
                  child: Text(
                    "SALON",
                    style: textStyle(20.sp, Colors.white, "poppin"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
