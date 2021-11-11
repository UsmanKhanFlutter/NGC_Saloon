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
    width: 370.w,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 20.h,
        ),
        Container(
          height: 100.h,
          width: 369.w,
          child: Row(
            children: [
              Image.asset(
                "assets/images/salonPic.png",
              ),
              SizedBox(
                width: 10.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Glam Studio by Farial K.",
                    style: textStyle(12.sp, Colors.black, "poppinbold"),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 220.w,
                        height: 50.h,
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed o od tempor incididunt ut labore et dolore magna aliqua. Ut eni nim veniam, quis nostrud exercitation ullamco labos nisi ut ax ea commodo consequat. Duis aute irure dolor in rprerit in vol",
                          style: textStyle(
                              8.sp, AppColor.textfieldColor, "poppin"),
                        ),
                      ),
                      Image.asset("assets/images/cam.png")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Wait Time",
                            style: textStyle(
                                8.sp, AppColor.pinkcolor, "poppinbold"),
                          ),
                          Text(
                            "Under 15 mints",
                            style: textStyle(7.sp, Colors.black, "poppinbold"),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Container(
                        height: 20.h,
                        width: 1.w,
                        color: AppColor.textfieldColor,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        children: [
                          Text(
                            "Experience",
                            style: textStyle(
                                8.sp, AppColor.pinkcolor, "poppinbold"),
                          ),
                          Text(
                            "31 uears",
                            style: textStyle(7.sp, Colors.black, "poppinbold"),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        height: 20.h,
                        width: 1.w,
                        color: AppColor.textfieldColor,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        children: [
                          Text(
                            "Satisfied Clients",
                            style: textStyle(
                                8.sp, AppColor.pinkcolor, "poppinbold"),
                          ),
                          Text(
                            "96% postitive",
                            style: textStyle(7.sp, Colors.black, "poppinbold"),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 25.h,
        ),
        Row(
          children: [
            Container(
              height: 45.h,
              width: 45.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
              child: Center(
                child: Text(
                  "96%",
                  style: textStyle(10.sp, Colors.white, "poppin"),
                ),
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Clients Reviews:",
                  style: textStyle(12.sp, Colors.black, "poppinbold"),
                ),
                Text(
                  "Satisfied Out of 379 Clients",
                  style: textStyle(10.sp, Colors.black, "poppin"),
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 30.h,
        ),
        Row(
          children: [
            Text(
              "Services",
              style: textStyle(12.sp, Colors.black, "poppinbold"),
            ),
            SizedBox(
              width: 100.w,
            ),
            Container(
              height: 4.h,
              width: 129.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.r),
                  color: Colors.black),
            ),
            Text(
              "92%",
              style: textStyle(12.sp, Colors.black, "poppinbold"),
            )
          ],
        ),
        Row(
          children: [
            Text(
              "Salon Environment",
              style: textStyle(12.sp, Colors.black, "poppinbold"),
            ),
            SizedBox(
              width: 25.w,
            ),
            Container(
              height: 4.h,
              width: 129.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.r),
                  color: Colors.black),
            ),
            Text(
              "92%",
              style: textStyle(12.sp, Colors.black, "poppinbold"),
            )
          ],
        ),
        Row(
          children: [
            Text(
              "Staff Behaviour",
              style: textStyle(12.sp, Colors.black, "poppinbold"),
            ),
            SizedBox(
              width: 50.w,
            ),
            Container(
              height: 4.h,
              width: 129.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.r),
                  color: Colors.black),
            ),
            Text(
              "92%",
              style: textStyle(12.sp, Colors.black, "poppinbold"),
            )
          ],
        ),
        SizedBox(
          height: 40.h,
        ),
        Container(
          height: 40.h,
          width: 220.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.r),
              color: AppColor.pinkcolor),
          child: Center(
            child: Text(
              "Book Appointment",
              style: textStyle(15.sp, Colors.white, "poppinbold"),
            ),
          ),
        )
      ],
    ),
  );
}

Widget services() {
  return Container(
    height: double.infinity,
    width: double.infinity,
    color: Color(0xffFFF2F4),
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
