import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saloon/globals/colors.dart';
import 'package:saloon/globals/ui_widget.dart';

class TimeSlot extends StatefulWidget {
  const TimeSlot({Key? key}) : super(key: key);

  @override
  _TimeSlotState createState() => _TimeSlotState();
}

class _TimeSlotState extends State<TimeSlot> {
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
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 15.h,
                    ),
                  ),
                ),
                Text(
                  "Select a Time Slot",
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox()
              ],
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          Row(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  CircleAvatar(
                    radius: 45.r,
                    backgroundImage: AssetImage("assets/images/salonPic.png"),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 30.h,
                                width: 55.w,
                                child: Text(
                                  "Under 15 min",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Text(
                                "Wait Time",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    color: Colors.black45,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Container(
                            height: 20.h,
                            width: 1.w,
                            color: Colors.grey.shade300,
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "4 Years",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "Experience",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    color: Colors.black45,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Container(
                            height: 20.h,
                            width: 1.w,
                            color: Colors.grey.shade300,
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "92% (144)",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "Satisfied p..",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.black45,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10.h, left: 80.w),
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "Fee:",
                      style: TextStyle(
                          color: Colors.grey.shade500, fontSize: 20.sp)),
                  TextSpan(
                      text: " Rs. 1500",
                      style: TextStyle(color: Colors.black, fontSize: 19.sp))
                ])),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 40.h,
            width: double.infinity,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              SizedBox(
                width: 5.w,
              ),
              Container(
                height: 40.h,
                width: 130.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Colors.grey[400]),
                child: Center(
                    child: Text(
                  "Today, 24 Nov",
                  style:
                      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),
                )),
              ),
              SizedBox(
                width: 5.w,
              ),
              SizedBox(
                width: 5.w,
              ),
              Container(
                height: 40.h,
                width: 130.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Colors.grey[200]),
                child: Center(
                    child: Text(
                  "Today, 24 Nov",
                  style:
                      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),
                )),
              ),
              SizedBox(
                width: 5.w,
              ),
              SizedBox(
                width: 5.w,
              ),
              Container(
                height: 40.h,
                width: 130.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Colors.grey[200]),
                child: Center(
                    child: Text(
                  "Today, 24 Nov",
                  style:
                      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),
                )),
              ),
              SizedBox(
                width: 5.w,
              ),
            ]),
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Today, 24 Nov",
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),
              )
            ],
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: Row(
              children: [
                Icon(
                  Icons.wb_sunny_sharp,
                  color: Colors.grey.shade400,
                ),
                Text(
                  "  Afternoon",
                  style: TextStyle(fontSize: 16.sp, color: Colors.black),
                ),
                Text(
                  "  1 slots",
                  style: TextStyle(fontSize: 15.sp, color: Colors.black45),
                )
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: Container(
                  height: 30.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(color: Colors.black26)),
                  child: Center(
                      child: Text(
                    "04:50 PM",
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                  )),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: Row(
              children: [
                Icon(
                  Icons.brightness_2_outlined,
                  color: Colors.grey.shade400,
                ),
                Text(
                  "  Evening",
                  style: TextStyle(fontSize: 16.sp, color: Colors.black),
                ),
                Text(
                  "  4 slots",
                  style: TextStyle(fontSize: 15.sp, color: Colors.black45),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Container(
              height: 30.h,
              width: 80.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: Colors.black26)),
              child: Center(
                  child: Text(
                "04:50 PM",
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
              )),
            ),
            Container(
              height: 30.h,
              width: 80.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: Colors.black26)),
              child: Center(
                  child: Text(
                "05:30 PM",
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
              )),
            ),
            Container(
              height: 30.h,
              width: 80.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: Colors.black26)),
              child: Center(
                  child: Text(
                "05:30 PM",
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
              )),
            ),
            Container(
              height: 30.h,
              width: 80.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: Colors.black26)),
              child: Center(
                  child: Text(
                "05:30 PM",
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
              )),
            ),
          ])
        ],
      )),
    );
  }
}
