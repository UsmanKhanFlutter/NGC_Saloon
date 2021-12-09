import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:saloon/Home/salons_in_area.dart';
import 'package:saloon/Home/time_slot.dart';
import 'package:saloon/Login/login_page.dart';
import 'package:saloon/Login/sign_up.dart';
import 'package:saloon/globals/colors.dart';
import 'package:saloon/splash_Screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
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
            home: const LoginPage()));
  }
}
