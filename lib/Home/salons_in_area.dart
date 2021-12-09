import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saloon/globals/colors.dart';
import 'package:saloon/globals/ui_widget.dart';

class SalonsInArea extends StatefulWidget {
  const SalonsInArea({Key? key}) : super(key: key);

  @override
  _SalonsInAreaState createState() => _SalonsInAreaState();
}

class _SalonsInAreaState extends State<SalonsInArea> {
  @override
  Widget build(BuildContext context) {
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
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 15.h,
                          ),
                          Text(
                            "Back",
                            style:
                                TextStyle(fontSize: 14.sp, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  Text(
                    "Salons in Peshawar",
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15.w),
                    child: const Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              height: 230.h,
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 0.0), //(x,y)
                  blurRadius: 2.0,
                ),
              ]),
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Container(
                      height: 15.h,
                      width: 100.w,
                      color: Colors.grey.shade300,
                      child: Row(
                        children: [
                          Icon(Icons.check,
                              color: Colors.green.shade900, size: 15.h),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Text(
                            "Partnered",
                            style: TextStyle(color: Colors.black54),
                          )
                        ],
                      ),
                    )
                  ]),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10.w,
                      ),
                      CircleAvatar(
                        radius: 45.r,
                        backgroundImage:
                            AssetImage("assets/images/salonPic.png"),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Glam Studio By Farial k.",
                            style: textStyle(18.sp, Colors.black, "poppinbold"),
                          ),
                          Container(
                            width: 300.w,
                            height: 60.h,
                            child: Text(
                              "Certified from London School of Makeup Providing Best Satisfactory Services Since 2016. MUA Since 2012",
                              style: textStyle(12.sp, Colors.black45, "poppin"),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 40.h,
                            width: 80.w,
                            child: Text(
                              "Under 15 min",
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Text(
                            "Wait Time",
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.black45,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Container(
                        height: 40.h,
                        width: 1.w,
                        color: Colors.grey.shade300,
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "4 Years",
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.black87,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Experience",
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.black45,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Container(
                        height: 40.h,
                        width: 1.w,
                        color: Colors.grey.shade300,
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "92% (144)",
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.black87,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Satisfied p..",
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.black45,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              color: Colors.white,
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, top: 20.h),
                        child: Text("Book Appointment",
                            style: TextStyle(
                                fontSize: 18.h,
                                color: Colors.black,
                                fontWeight: FontWeight.w600)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    height: 1.h,
                    width: double.infinity,
                    color: Colors.grey[200],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, top: 10.h),
                        child: SizedBox(
                          height: 40.h,
                          width: 310.w,
                          child: Text(
                              "GlamStudio Hydra Facial Flat 30% on Hydra Facial",
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700)),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15.h, left: 20.w),
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "Fee:",
                              style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontSize: 20.sp)),
                          TextSpan(
                              text: " Rs. 500",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 19.sp))
                        ])),
                      ),
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20.h, left: 20.w),
                          child: Container(
                              child: Row(
                            children: [
                              Icon(
                                Icons.alarm_rounded,
                                color: Colors.green,
                                size: 15.h,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "Available Today",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.green,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          )),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20.h, right: 20.w),
                          child: Container(
                              child: Row(
                            children: [
                              Text(
                                "10:00 AM -",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                " 10:00 PM",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                size: 16.h,
                              )
                            ],
                          )),
                        )
                      ]),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    height: 40.h,
                    width: 374.w,
                    decoration: BoxDecoration(
                        color: AppColor.orangColor,
                        borderRadius: BorderRadius.circular(5.r)),
                    child: Center(
                        child: Text(
                      "Book Appointment",
                      style: TextStyle(
                          fontSize: 15.h,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    )),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: Container(
                          height: 40.h,
                          width: 180.w,
                          decoration: BoxDecoration(
                              color: AppColor.pinkcolor,
                              borderRadius: BorderRadius.circular(5.r)),
                          child: Center(
                            child: Text(
                              "Connect Now",
                              style: TextStyle(
                                  fontSize: 15.h,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20.w),
                        child: Container(
                          height: 40.h,
                          width: 180.w,
                          decoration: BoxDecoration(
                              color: AppColor.orangColor,
                              borderRadius: BorderRadius.circular(5.r)),
                          child: Center(
                            child: Text(
                              "Book Appoint...",
                              style: TextStyle(
                                  fontSize: 15.h,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
