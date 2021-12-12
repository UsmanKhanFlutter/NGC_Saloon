import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saloon/globals/ui_widget.dart';
import 'package:saloon/globals/colors.dart';

class AboutStudio extends StatefulWidget {
  const AboutStudio({Key? key}) : super(key: key);

  @override
  _AboutStudioState createState() => _AboutStudioState();
}

class _AboutStudioState extends State<AboutStudio> {
  List pagesName = [
    "Feedback",
    "Salon Details",
    "Services",
    "Experience",
    "Reviews",
  ];

  final scaffolkey = GlobalKey<ScaffoldState>();

  int selectedindex = 0;
  String selectedtab = "Feedback";
  @override
  Widget build(BuildContext context) {
    List<Widget> bodyContent = [
      about(context),
      services(),
      review(),
      faqs(),
      review()
    ];
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 30.h,
              width: double.infinity,
              color: AppColor.pinkcolor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5.w),
                    child: Container(
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 15.h,
                      ),
                    ),
                  ),
                  Text(
                    "Glam Studio by Faryal k.",
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20.w),
                    child: const Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 50.h,
              child: ListView(
                padding: EdgeInsets.only(top: 20.h),
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 10.h,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedtab = pagesName[0];
                        selectedindex = 0;
                      });
                    },
                    child: Column(
                      children: [
                        Text(pagesName[0],
                            style: TextStyle(
                                fontSize: 15.sp,
                                color: selectedtab == "Feedback"
                                    ? AppColor.pinkcolor
                                    : Colors.grey,
                                fontWeight: FontWeight.w600)),
                        SizedBox(
                          height: 5.h,
                        ),
                        selectedindex == 0
                            ? Container(
                                height: 3.h,
                                width: 75.w,
                                color: AppColor.pinkcolor,
                              )
                            : Container()
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20.h,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedtab = pagesName[1];
                        selectedindex = 1;
                      });
                    },
                    child: Column(
                      children: [
                        Text(pagesName[1],
                            style: TextStyle(
                                fontSize: 15.sp,
                                color: selectedtab == "Salon Details"
                                    ? AppColor.pinkcolor
                                    : Colors.grey,
                                fontWeight: FontWeight.w600)),
                        SizedBox(
                          height: 5.h,
                        ),
                        selectedindex == 1
                            ? Container(
                                height: 3.h,
                                width: 95.w,
                                color: AppColor.pinkcolor,
                              )
                            : Container()
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20.h,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedtab = pagesName[2];
                        selectedindex = 2;
                      });
                    },
                    child: Column(
                      children: [
                        Text(pagesName[2],
                            style: TextStyle(
                                fontSize: 15.sp,
                                color: selectedtab == "Services"
                                    ? AppColor.pinkcolor
                                    : Colors.grey,
                                fontWeight: FontWeight.w600)),
                        SizedBox(
                          height: 5.h,
                        ),
                        selectedindex == 2
                            ? Container(
                                height: 3.h,
                                width: 65.w,
                                color: AppColor.pinkcolor,
                              )
                            : Container()
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20.h,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedtab = pagesName[3];
                        selectedindex = 3;
                      });
                    },
                    child: Column(
                      children: [
                        Text(pagesName[3],
                            style: TextStyle(
                                fontSize: 15.sp,
                                color: selectedtab == "Experience"
                                    ? AppColor.pinkcolor
                                    : Colors.grey,
                                fontWeight: FontWeight.w600)),
                        SizedBox(
                          height: 5.h,
                        ),
                        selectedindex == 3
                            ? Container(
                                height: 3.h,
                                width: 80.w,
                                color: AppColor.pinkcolor,
                              )
                            : Container()
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20.h,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedtab = pagesName[4];
                        selectedindex = 4;
                      });
                    },
                    child: Column(
                      children: [
                        Text(pagesName[4],
                            style: TextStyle(
                                fontSize: 15.sp,
                                color: selectedtab == "Reviews"
                                    ? AppColor.pinkcolor
                                    : Colors.grey,
                                fontWeight: FontWeight.w600)),
                        SizedBox(
                          height: 5.h,
                        ),
                        selectedindex == 4
                            ? Container(
                                height: 3.h,
                                width: 65.w,
                                color: AppColor.pinkcolor,
                              )
                            : Container(),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.h,
                  ),
                ],
              ),
            ),
            Expanded(child: bodyContent[selectedindex]),
          ],
        ),
      ),
    );
  }
}

Widget about(BuildContext context) {
  return Container(
    width: 390.w,
    color: Colors.white,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/pinkcam.png",
              height: 20.h,
            ),
            SizedBox(
              width: 5.h,
            ),
            Text(
              "Sal-One Video Consultation",
              style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            )
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        RichText(
            text: TextSpan(children: [
          TextSpan(
              text: "Fee:",
              style: TextStyle(fontSize: 20.sp, color: Colors.grey.shade400)),
          TextSpan(
              text: " Rs. 500",
              style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w500))
        ])),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: Row(
                children: [
                  Container(
                    height: 10.h,
                    width: 10.w,
                    decoration: BoxDecoration(
                        color: Colors.green.shade600, shape: BoxShape.circle),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "Available Today",
                    style: TextStyle(color: Colors.green.shade600),
                  ),
                ],
              ),
            ),
            SizedBox(
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Column(
                  children: [
                    Text(
                      "10:00 AM - 10:00 PM",
                      style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "10:00 AM - 10:00 PM",
                      style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                )
              ]),
            )
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40.h,
              width: 360.w,
              decoration: BoxDecoration(
                  color: AppColor.pinkcolor,
                  borderRadius: BorderRadius.circular(5.r)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/pinkcam.png",
                    height: 10.h,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "Book Video Consultation",
                    style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          height: 10.h,
          width: double.infinity,
          color: Colors.grey.shade100,
        ),
        SizedBox(
          height: 15.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.black,
                size: 18.h,
              ),
              SizedBox(
                width: 8.w,
              ),
              Text(
                "Reviews",
                style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        Container(
          height: 1.h,
          width: double.infinity,
          color: Colors.grey.shade100,
        ),
        SizedBox(
          height: 15.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Container(
                  height: 50.h,
                  width: 50.w,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black),
                  child: Center(
                    child: Text(
                      "92%",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Container(
                  height: 50.h,
                  width: 115.w,
                  child: Text(
                    "Satisfied out of 144",
                    style: TextStyle(fontSize: 15.sp, color: Colors.black),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Services",
                  style:
                      TextStyle(fontSize: 16.sp, color: Colors.grey.shade500),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  children: [
                    Container(
                        height: 3.h,
                        width: 140.w,
                        color: Colors.grey.shade200,
                        child: Row(
                          children: [
                            Container(
                              height: 3.h,
                              width: 120.w,
                              color: Colors.black,
                            ),
                          ],
                        )),
                    SizedBox(
                      width: 5.h,
                    ),
                    Text(
                      "92%",
                      style: TextStyle(fontSize: 16.sp, color: Colors.black),
                    )
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  "Environment",
                  style:
                      TextStyle(fontSize: 16.sp, color: Colors.grey.shade500),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  children: [
                    Container(
                        height: 3.h,
                        width: 140.w,
                        color: Colors.grey.shade200,
                        child: Row(
                          children: [
                            Container(
                              height: 3.h,
                              width: 120.w,
                              color: Colors.black,
                            ),
                          ],
                        )),
                    SizedBox(
                      width: 5.h,
                    ),
                    Text(
                      "92%",
                      style: TextStyle(fontSize: 16.sp, color: Colors.black),
                    )
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  "Staff Behaviour",
                  style:
                      TextStyle(fontSize: 16.sp, color: Colors.grey.shade500),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  children: [
                    Container(
                        height: 3.h,
                        width: 140.w,
                        color: Colors.grey.shade200,
                        child: Row(
                          children: [
                            Container(
                              height: 3.h,
                              width: 120.w,
                              color: Colors.black,
                            ),
                          ],
                        )),
                    SizedBox(
                      width: 5.h,
                    ),
                    Text(
                      "92%",
                      style: TextStyle(fontSize: 16.sp, color: Colors.black),
                    )
                  ],
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 40.h,
              width: 150.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                color: AppColor.pinkcolor,
              ),
              child: Center(
                child: Text(
                  "Connect Now",
                  style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Container(
              height: 40.h,
              width: 150.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                color: AppColor.orangColor,
              ),
              child: Center(
                child: Text(
                  "Book Appoint...",
                  style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        )
      ],
    ),
  );
}

Widget services() {
  return Container(
    height: double.infinity,
    width: double.infinity,
    child: Center(
      child: Text("Under work"),
    ),
  );
}

Widget review() {
  return SizedBox(
    height: double.infinity,
    width: double.infinity,
    child: Center(child: Text("Under work")),
  );
}

Widget faqs() {
  return SizedBox(
    height: double.infinity,
    width: double.infinity,
    child: Center(child: Text("Under work")),
  );
}

Widget reviews() {
  return Container(
    height: double.infinity,
    width: double.infinity,
    child: Center(child: Text("Under work")),
  );
}

Widget customerReviewChart(String number, String percnt, int width) {
  return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
    Text(
      number,
      style: textStyle(8.sp, const Color(0xff2F43FB), "poppinbold"),
    ),
    SizedBox(
      width: 5.w,
    ),
    Container(
      height: 9.h,
      width: 220.w,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(6.r)),
      child: Row(
        children: [
          Container(
            height: 9.h,
            width: width.w,
            decoration: BoxDecoration(
                color: const Color(0xffFFD400),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(6.r),
                  bottomRight: Radius.circular(6.r),
                )),
          ),
        ],
      ),
    ),
    SizedBox(
      width: 5.w,
    ),
    Text(
      percnt,
      style: textStyle(9.sp, Colors.black, "poppinbold"),
    )
  ]);
}
