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
    "About",
    "Services",
    "Reviews",
    "FAQs",
  ];

  final scaffolkey = GlobalKey<ScaffoldState>();

  int selectedindex = 0;
  String selectedtab = "About";
  @override
  Widget build(BuildContext context) {
    List<Widget> bodyContent = [about(context), services(), review(), faqs()];
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
            Expanded(child: bodyContent[selectedindex]),
          ],
        ),
      ),
    );
  }
}

Widget about(BuildContext context) {
  return SizedBox(
    width: 370.w,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 20.h,
        ),
        SizedBox(
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
                      SizedBox(
                        width: 220.w,
                        height: 50.h,
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed o od tempor incididunt ut labore et dolore magna aliqua. Ut eni nim veniam, quis nostrud exercitation ullamco labos nisi ut ax ea commodo consequat. Duis aute irure dolor in rprerit in vol",
                          style: textStyle(
                              8.sp, AppColor.textfieldColor, "poppin"),
                        ),
                      ),
                      InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                    child: Container(
                                      height: 365.h,
                                      width: 335.w,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4.r),
                                          color: Colors.white),
                                      child: Center(
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 20.h,
                                            ),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Image.asset(
                                                      "assets/images/pinkcam.png",
                                                      height: 30.h),
                                                  Text(
                                                    "Online Video Consultation",
                                                    style: textStyle(
                                                        13.sp,
                                                        Colors.black,
                                                        "poppinsemi"),
                                                  )
                                                ]),
                                            SizedBox(
                                              height: 20.h,
                                            ),
                                            Container(
                                                height: 37.h,
                                                width: 270.w,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2.r),
                                                  color:
                                                      AppColor.textfieldColor,
                                                ),
                                                child: TextFormField(
                                                  decoration:
                                                      const InputDecoration(
                                                          focusedBorder:
                                                              InputBorder.none,
                                                          disabledBorder:
                                                              InputBorder.none,
                                                          enabledBorder:
                                                              InputBorder.none,
                                                          prefixIcon: Icon(
                                                            Icons
                                                                .perm_contact_cal_rounded,
                                                          ),
                                                          hintText:
                                                              "GlamStudio by Farial k."),
                                                  style:
                                                      TextStyle(fontSize: 10.h),
                                                )

                                                // The list of options
                                                ),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            Container(
                                                height: 37.h,
                                                width: 270.w,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2.r),
                                                  color:
                                                      AppColor.textfieldColor,
                                                ),
                                                child: TextFormField(
                                                  decoration: const InputDecoration(
                                                      focusedBorder:
                                                          InputBorder.none,
                                                      disabledBorder:
                                                          InputBorder.none,
                                                      enabledBorder:
                                                          InputBorder.none,
                                                      prefixIcon: Icon(
                                                          Icons.person_pin),
                                                      hintText: "Name"),
                                                  style:
                                                      TextStyle(fontSize: 10.h),
                                                )

                                                // The list of options
                                                ),
                                            SizedBox(height: 10.h),
                                            Container(
                                                height: 37.h,
                                                width: 270.w,
                                                color: AppColor.pinkcolor,
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 10.w,
                                                    ),
                                                    const Icon(
                                                      Icons.alarm,
                                                      color: Colors.white,
                                                    ),
                                                    SizedBox(
                                                      width: 10.w,
                                                    ),
                                                    Text(
                                                      "Time",
                                                      style: textStyle(
                                                          10.sp,
                                                          Colors.white,
                                                          "poppin"),
                                                    )
                                                  ],
                                                )),
                                            Container(
                                              height: 90.h,
                                              width: 270.w,
                                              color: AppColor.pinkLight,
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 5.h,
                                                  ),
                                                  Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        Icon(
                                                          Icons.arrow_back_ios,
                                                          size: 15.h,
                                                          color: Colors.grey,
                                                        ),
                                                        Column(children: [
                                                          Row(
                                                            children: [
                                                              Text(
                                                                "Saturday,oct,21",
                                                                style: textStyle(
                                                                    8.sp,
                                                                    Colors
                                                                        .black54,
                                                                    "poppin"),
                                                              ),
                                                              SizedBox(
                                                                width: 5.h,
                                                              ),
                                                              Text(
                                                                "Sunday,oct,21",
                                                                style: textStyle(
                                                                    8.sp,
                                                                    Colors
                                                                        .black54,
                                                                    "poppin"),
                                                              ),
                                                              SizedBox(
                                                                width: 5.h,
                                                              ),
                                                              Text(
                                                                "Monday,oct,21",
                                                                style: textStyle(
                                                                    8.sp,
                                                                    Colors
                                                                        .black54,
                                                                    "poppin"),
                                                              )
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: 5.h,
                                                          ),
                                                          Container(
                                                            height: 2.h,
                                                            width: 220.w,
                                                            color: AppColor
                                                                .textfieldColor,
                                                          )
                                                        ]),
                                                        Icon(
                                                          Icons
                                                              .arrow_forward_ios,
                                                          size: 15.h,
                                                          color: Colors.grey,
                                                        ),
                                                      ]),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  Row(children: [
                                                    SizedBox(
                                                      width: 5.h,
                                                    ),
                                                    Icon(
                                                      Icons.wb_sunny,
                                                      color: Colors.yellow[600],
                                                      size: 15.h,
                                                    ),
                                                    SizedBox(
                                                      width: 2.h,
                                                    ),
                                                    Text(
                                                      "Afternoon",
                                                      style: textStyle(
                                                          8.sp,
                                                          Colors.black54,
                                                          "poppin"),
                                                    ),
                                                    SizedBox(
                                                      width: 10.h,
                                                    ),
                                                    Container(
                                                      height: 15.h,
                                                      width: 40.w,
                                                      child: Center(
                                                        child: Text(
                                                          "02:00pm",
                                                          style: textStyle(
                                                              7.sp,
                                                              Colors.black54,
                                                              "poppin"),
                                                        ),
                                                      ),
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              width: 1.w,
                                                              color: Colors
                                                                  .black54)),
                                                    ),
                                                    SizedBox(
                                                      width: 1.h,
                                                    ),
                                                    Container(
                                                      height: 15.h,
                                                      width: 40.w,
                                                      child: Center(
                                                        child: Text(
                                                          "02:00pm",
                                                          style: textStyle(
                                                              7.sp,
                                                              Colors.black54,
                                                              "poppin"),
                                                        ),
                                                      ),
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              width: 1.w,
                                                              color: Colors
                                                                  .black54)),
                                                    ),
                                                    SizedBox(
                                                      width: 1.h,
                                                    ),
                                                    Container(
                                                      height: 15.h,
                                                      width: 40.w,
                                                      child: Center(
                                                        child: Text(
                                                          "02:00pm",
                                                          style: textStyle(
                                                              7.sp,
                                                              Colors.black54,
                                                              "poppin"),
                                                        ),
                                                      ),
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              width: 1.w,
                                                              color: Colors
                                                                  .black54)),
                                                    ),
                                                  ]),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  Row(children: [
                                                    SizedBox(
                                                      width: 5.h,
                                                    ),
                                                    Icon(
                                                      Icons.brightness_4,
                                                      color: Colors.red[900],
                                                      size: 15.h,
                                                    ),
                                                    SizedBox(
                                                      width: 2.h,
                                                    ),
                                                    Text(
                                                      "Evening",
                                                      style: textStyle(
                                                          8.sp,
                                                          Colors.black54,
                                                          "poppin"),
                                                    ),
                                                    SizedBox(
                                                      width: 17.h,
                                                    ),
                                                    Container(
                                                      height: 15.h,
                                                      width: 40.w,
                                                      child: Center(
                                                        child: Text(
                                                          "02:00pm",
                                                          style: textStyle(
                                                              7.sp,
                                                              Colors.black54,
                                                              "poppin"),
                                                        ),
                                                      ),
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              width: 1.w,
                                                              color: Colors
                                                                  .black54)),
                                                    ),
                                                    SizedBox(
                                                      width: 1.h,
                                                    ),
                                                    Container(
                                                      height: 15.h,
                                                      width: 40.w,
                                                      child: Center(
                                                        child: Text(
                                                          "02:00pm",
                                                          style: textStyle(
                                                              7.sp,
                                                              Colors.black54,
                                                              "poppin"),
                                                        ),
                                                      ),
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              width: 1.w,
                                                              color: Colors
                                                                  .black54)),
                                                    ),
                                                    SizedBox(
                                                      width: 1.h,
                                                    ),
                                                    Container(
                                                      height: 15.h,
                                                      width: 40.w,
                                                      child: Center(
                                                        child: Text(
                                                          "02:00pm",
                                                          style: textStyle(
                                                              7.sp,
                                                              Colors.black54,
                                                              "poppin"),
                                                        ),
                                                      ),
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              width: 1.w,
                                                              color: Colors
                                                                  .black54)),
                                                    ),
                                                  ])
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 20.h),
                                            InkWell(
                                              onTap: () {
                                                showDialog(
                                                    context: context,
                                                    builder:
                                                        (BuildContext context) {
                                                      return Dialog(
                                                        child: Container(
                                                          height: 365.h,
                                                          width: 335.w,
                                                          child: Column(
                                                              children: [
                                                                SizedBox(
                                                                  height: 20.h,
                                                                ),
                                                                Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Image.asset(
                                                                          "assets/images/pinkcam.png",
                                                                          height:
                                                                              30.h),
                                                                      Text(
                                                                        "Online Video Consultation",
                                                                        style: textStyle(
                                                                            13.sp,
                                                                            Colors.black,
                                                                            "poppinsemi"),
                                                                      )
                                                                    ]),
                                                                SizedBox(
                                                                  height: 10.h,
                                                                ),
                                                                Icon(
                                                                    Icons
                                                                        .priority_high,
                                                                    size: 140.h,
                                                                    color: Colors
                                                                        .black),
                                                                Container(
                                                                  width: 240.w,
                                                                  child: Text(
                                                                      "Dear User! You are not subscribed to Online Video Consultation Offer. Please Subscribe to Enjoy Video Consultations with Dermatologists and Specialists"),
                                                                ),
                                                                SizedBox(
                                                                  height: 20.h,
                                                                ),
                                                                Container(
                                                                  height: 37.h,
                                                                  width: 270.w,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: AppColor
                                                                        .orangColor,
                                                                  ),
                                                                  child: Center(
                                                                    child: Text(
                                                                      "Subscribe Now",
                                                                      style: textStyle(
                                                                          14.sp,
                                                                          Colors
                                                                              .white,
                                                                          "poppin"),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ]),
                                                        ),
                                                      );
                                                    });
                                              },
                                              child: Container(
                                                height: 37.h,
                                                width: 270.w,
                                                decoration: BoxDecoration(
                                                  color: AppColor.orangColor,
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "Book Appointment",
                                                    style: textStyle(14.sp,
                                                        Colors.white, "poppin"),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                });
                          },
                          child: Image.asset(
                            "assets/images/cam.png",
                            height: 17.h,
                          ))
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
              decoration: const BoxDecoration(
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
    color: const Color(0xffFFF2F4),
    child: Center(
      child: Column(children: [
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 5, left: 10),
            child: Text(
              "Glam Studio - Services",
              style: textStyle(13.sp, Colors.black, "poppinbold"),
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          height: 236.h,
          width: 344.w,
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Image.asset(
                "assets/images/skincare.png",
                height: 110.h,
              ),
              Text(
                "Skincare",
                style: textStyle(16.sp, AppColor.pinkcolor, "poppinbold"),
              ),
              SizedBox(
                height: 39.h,
                width: 280.w,
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore m agna aliqua. Ut enim ad minim veniam, quis",
                  style: textStyle(9.sp, Colors.black, "poppin"),
                ),
              ),
              SizedBox(height: 15.h),
              Container(
                height: 22.h,
                width: 112.w,
                color: AppColor.orangColor,
                child: Center(
                  child: Text(
                    "Book Appointment",
                    style: textStyle(9.sp, Colors.white, "poppinbold"),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 144.h,
              width: 94.w,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/servicemakeup.png"),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Makeup",
                    style: textStyle(11.sp, AppColor.pinkcolor, "poppinbold"),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                    height: 15.h,
                    width: 42.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.r),
                        color: AppColor.orangColor),
                    child: Center(
                      child: Text(
                        "View",
                        style: textStyle(9.sp, Colors.white, "poppinbold"),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 144.h,
              width: 94.w,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/hair.png"),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Hair Affair",
                    style: textStyle(11.sp, AppColor.pinkcolor, "poppinbold"),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                    height: 15.h,
                    width: 42.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.r),
                        color: AppColor.orangColor),
                    child: Center(
                      child: Text(
                        "View",
                        style: textStyle(9.sp, Colors.white, "poppinbold"),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 144.h,
              width: 94.w,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/pedicare.png"),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Mani/Pedi",
                    style: textStyle(11.sp, AppColor.pinkcolor, "poppinbold"),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                    height: 15.h,
                    width: 42.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.r),
                        color: AppColor.orangColor),
                    child: Center(
                      child: Text(
                        "View",
                        style: textStyle(9.sp, Colors.white, "poppinbold"),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 144.h,
              width: 94.w,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/tattoo.png"),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Lash/Tattoo",
                    style: textStyle(11.sp, AppColor.pinkcolor, "poppinbold"),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                    height: 15.h,
                    width: 42.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.r),
                        color: AppColor.orangColor),
                    child: Center(
                      child: Text(
                        "View",
                        style: textStyle(9.sp, Colors.white, "poppinbold"),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ]),
    ),
  );
}

Widget review() {
  return SizedBox(
    height: double.infinity,
    width: double.infinity,
    child: Center(
        child: Column(children: [
      Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.only(top: 5, left: 10),
          child: Text(
            "Glam Studio - Reviews",
            style: textStyle(13.sp, Colors.black, "poppinbold"),
          ),
        ),
      ),
      SizedBox(
        height: 10.h,
      ),
      Container(
        width: 255.w,
        height: 28.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r), color: Colors.grey[200]),
        child: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow[600],
              ),
              Icon(
                Icons.star,
                color: Colors.yellow[600],
              ),
              Icon(
                Icons.star,
                color: Colors.yellow[600],
              ),
              Icon(
                Icons.star,
                color: Colors.yellow[600],
              ),
              Icon(
                Icons.star,
                color: Colors.yellow[600],
              ),
              SizedBox(
                width: 20.w,
              ),
              Text("4.7 out of 5",
                  style: textStyle(12.sp, Colors.black, "poppin"))
            ],
          ),
        ),
      ),
      Text(
        "379 Customers Ratings and Reviews",
        style: textStyle(11.sp, Colors.black, "poppin"),
      ),
      SizedBox(height: 10.h),
      customerReviewChart("5 Stars", "84%", 180),
      SizedBox(height: 5.h),
      customerReviewChart("4 Stars", "19%", 120),
      SizedBox(height: 5.h),
      customerReviewChart("3 Stars", "18%", 100),
      SizedBox(height: 5.h),
      customerReviewChart("2 Stars", "15%", 90),
      SizedBox(
        height: 60.h,
      ),
      SizedBox(
        height: 90.h,
        width: 358.w,
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                "Best Services",
                style: textStyle(14.sp, Colors.black, "poppinbold"),
              ),
              Text("15 April,2021",
                  style: textStyle(14.sp, Colors.black, "poppinbold"))
            ]),
            SizedBox(
                height: 50.h,
                width: 358.w,
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed o od tempor incididunt ut labore et dolore magna aliqua. Ut eni nim veniam, quis nostrud exercitation ullamco labos nisi ut ax ea commodo consequat. Duis aute irure dolor in rprerit in vol",
                  style: textStyle(10.sp, Colors.black54, "poppin"),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("-Ali Khan",
                    style: textStyle(10.sp, Colors.black, "poppinbold"))
              ],
            )
          ],
        ),
      ),
      SizedBox(
        height: 30.h,
      ),
      SizedBox(
        height: 90.h,
        width: 358.w,
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                "Best Services",
                style: textStyle(14.sp, Colors.black, "poppinbold"),
              ),
              Text("15 April,2021",
                  style: textStyle(14.sp, Colors.black, "poppinbold"))
            ]),
            SizedBox(
                height: 50.h,
                width: 358.w,
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed o od tempor incididunt ut labore et dolore magna aliqua. Ut eni nim veniam, quis nostrud exercitation ullamco labos nisi ut ax ea commodo consequat. Duis aute irure dolor in rprerit in vol",
                  style: textStyle(10.sp, Colors.black54, "poppin"),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("-Ali Khan",
                    style: textStyle(10.sp, Colors.black, "poppinbold"))
              ],
            )
          ],
        ),
      ),
      SizedBox(
        height: 30.h,
      ),
      SizedBox(
        height: 90.h,
        width: 358.w,
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                "Best Services",
                style: textStyle(14.sp, Colors.black, "poppinbold"),
              ),
              Text("15 April,2021",
                  style: textStyle(14.sp, Colors.black, "poppinbold"))
            ]),
            SizedBox(
                height: 50.h,
                width: 358.w,
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed o od tempor incididunt ut labore et dolore magna aliqua. Ut eni nim veniam, quis nostrud exercitation ullamco labos nisi ut ax ea commodo consequat. Duis aute irure dolor in rprerit in vol",
                  style: textStyle(10.sp, Colors.black54, "poppin"),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("-Ali Khan",
                    style: textStyle(10.sp, Colors.black, "poppinbold"))
              ],
            )
          ],
        ),
      ),
      SizedBox(
        height: 20.h,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                height: 30.h,
                width: 30.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
                child: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
              ),
              Text("Load More",
                  style: textStyle(12.sp, Colors.black, "poppinbold"))
            ],
          )
        ],
      )
    ])),
  );
}

Widget faqs() {
  return SizedBox(
    height: double.infinity,
    width: double.infinity,
    child: Center(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 5, left: 10),
              child: Text(
                "Glam Studio - FAQs",
                style: textStyle(13.sp, Colors.black, "poppinbold"),
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Image.asset(
            "assets/images/logo.png",
            height: 50.h,
          ),
          Text(
            "Ask Your Question!",
            style: textStyle(13.sp, Colors.black, "poppinbold"),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            width: 305.w,
            height: 33.h,
            decoration: BoxDecoration(
                color: AppColor.orangColor,
                borderRadius: BorderRadius.circular(1.r)),
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(children: [
                const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                Text("What else you want to know about this salon?",
                    style: textStyle(9.sp, Colors.white, "poppinbold"))
              ]),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 5, left: 10),
              child: Text(
                "Frequently Asked Questions:",
                style: textStyle(13.sp, Colors.black, "poppinbold"),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
            width: 350.w,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipi,",
                      style: textStyle(12.sp, Colors.grey.shade400, "poppin"),
                    ),
                    const Icon(Icons.arrow_drop_down, color: Colors.black)
                  ],
                ),
                Container(
                  height: 1.h,
                  width: 350.w,
                  color: Colors.grey[300],
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
            width: 350.w,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipi,",
                      style: textStyle(12.sp, Colors.grey.shade400, "poppin"),
                    ),
                    const Icon(Icons.arrow_drop_down, color: Colors.black)
                  ],
                ),
                Container(
                  height: 1.h,
                  width: 350.w,
                  color: Colors.grey[300],
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
            width: 350.w,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipi,",
                      style: textStyle(12.sp, Colors.grey.shade400, "poppin"),
                    ),
                    const Icon(Icons.arrow_drop_down, color: Colors.black)
                  ],
                ),
                Container(
                  height: 1.h,
                  width: 350.w,
                  color: Colors.grey[300],
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
            width: 350.w,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipi,",
                      style: textStyle(12.sp, Colors.grey.shade400, "poppin"),
                    ),
                    const Icon(Icons.arrow_drop_down, color: Colors.black)
                  ],
                ),
                Container(
                  height: 1.h,
                  width: 350.w,
                  color: Colors.grey[300],
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
            width: 350.w,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipi,",
                      style: textStyle(12.sp, Colors.grey.shade400, "poppin"),
                    ),
                    const Icon(Icons.arrow_drop_down, color: Colors.black)
                  ],
                ),
                Container(
                  height: 1.h,
                  width: 350.w,
                  color: Colors.grey[300],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Container(
            height: 30.h,
            width: 30.w,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: const Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
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
