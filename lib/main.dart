import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:saloon/globals/colors.dart';
import 'package:saloon/splash_Screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: AppColor.pinkcolor));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(414, 736),
        builder: () => MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              splashColor: Colors
                  .transparent, //the highlight effect when clicked is set to transparent
              highlightColor: Colors.transparent,

              primarySwatch: Colors.blue,
            ),
            home: const SplashScreen()));
  }
}
