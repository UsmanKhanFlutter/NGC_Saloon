import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saloon/globals/UI_widgets.dart';
import 'package:saloon/globals/colors.dart';

class AboutStudio extends StatefulWidget {
  const AboutStudio({Key? key}) : super(key: key);

  @override
  _AboutStudioState createState() => _AboutStudioState();
}

class _AboutStudioState extends State<AboutStudio> {
  List pagesName = [
    "About",
    "Services",
    "Reviews",
    "FAQs",
  ];
  List<Widget> bodyContent = [about(), services(), review(), faqs()];
  int selectedindex = 0;
  String selectedtab = "About";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            topContainer("GlamStudio"),
            Container(
              width: double.infinity,
              height: 30.h,
              color: AppColor.textfieldColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedtab = pagesName[0];
                        selectedindex = 0;
                      });
                    },
                    child: Text(
                      pagesName[0],
                      style: textStyle(
                          12.sp,
                          selectedtab == "About" ? Colors.black : Colors.grey,
                          "poppinbold"),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedtab = pagesName[1];
                        selectedindex = 1;
                      });
                    },
                    child: Text(
                      pagesName[1],
                      style: textStyle(
                          12.sp,
                          selectedtab == "Services"
                              ? Colors.black
                              : Colors.grey,
                          "poppinbold"),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedtab = pagesName[2];
                        selectedindex = 2;
                      });
                    },
                    child: Text(
                      pagesName[2],
                      style: textStyle(
                          12.sp,
                          selectedtab == "Reviews" ? Colors.black : Colors.grey,
                          "poppinbold"),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedtab = pagesName[3];
                        selectedindex = 3;
                      });
                    },
                    child: Text(
                      pagesName[3],
                      style: textStyle(
                          12.sp,
                          selectedtab == "FAQs" ? Colors.black : Colors.grey,
                          "poppinbold"),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: bodyContent[selectedindex])
          ],
        ),
      ),
    );
  }
}

Widget about() {
  return Container(
    height: 100,
    width: 200,
    color: Colors.red,
  );
}

Widget services() {
  return Container(
    height: 100,
    width: 200,
    color: Colors.blue,
  );
}

Widget review() {
  return Container(
    height: 100,
    width: 200,
    color: Colors.pink,
  );
}

Widget faqs() {
  return Container(
    height: 100,
    width: 200,
    color: Colors.black,
  );
}
