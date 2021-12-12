import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saloon/Home/about_studio.dart';
import 'package:saloon/Home/time_slot.dart';
import 'package:saloon/globals/colors.dart';
import 'package:saloon/globals/ui_widget.dart';

class SalonInArea extends StatefulWidget {
  const SalonInArea({Key? key}) : super(key: key);

  @override
  _SalonInAreaState createState() => _SalonInAreaState();
}

class _SalonInAreaState extends State<SalonInArea> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600),
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
              height: 20.h,
            ),
            Container(
                height: 40.h,
                width: 370.w,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black26)),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(8),
                      prefixIcon: Icon(Icons.search, color: Colors.black38),
                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: "Salon, Services, Ratings.....",
                      hintStyle: textStyle(13.sp, Colors.black38, "myriadpro")),
                )),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 110.h,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      Column(
                        children: [
                          contactContainer("Salons Near Me"),
                          SizedBox(
                            height: 10.w,
                          ),
                          contactContainer("video Consulta..")
                        ],
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Column(
                        children: [
                          contactContainer("Lowest Fee"),
                          SizedBox(
                            height: 10.w,
                          ),
                          contactContainer("Available Today")
                        ],
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Column(
                        children: [
                          contactContainer("Lowest Fee"),
                          SizedBox(
                            height: 10.w,
                          ),
                          contactContainer("Available Today")
                        ],
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                       Column(
                        children: [
                          contactContainer("Lowest Fee"),
                          SizedBox(
                            height: 10.w,
                          ),
                          contactContainer("Available Today")
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.w),
                  child: Text(
                    "Showing Top 22 Salons in Peshawar",
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 360.h,
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
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const AboutStudio()));
                            },
                            child: Text(
                              "Glam Studio By Farial k.",
                              style: textStyle(18.sp, Colors.black, "poppinbold"),
                            ),
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
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    height: 60.h,
                    width: double.infinity,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      SizedBox(width: 10.h),
                      Container(
                          width: 280.w,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(5.r)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Depilix Salon Saddar Branch",
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: Colors.blue.shade900,
                                      fontWeight: FontWeight.w600)),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 10.h,
                                            width: 10.w,
                                            decoration: BoxDecoration(
                                                color: Colors.green.shade600,
                                                shape: BoxShape.circle),
                                          ),
                                          SizedBox(
                                            width: 5.w,
                                          ),
                                          Text(
                                            "Available Today",
                                            style: TextStyle(
                                                color: Colors.green.shade600),
                                          )
                                        ],
                                      ),
                                    ),
                                    Text(
                                      "Rs. 500",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 16.sp),
                                    )
                                  ])
                            ],
                          )),
                      SizedBox(width: 10.h),
                      Container(
                        width: 280.w,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue.shade900),
                            borderRadius: BorderRadius.circular(5.r)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Depilix Salon Saddar Branch",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.blue.shade900,
                                    fontWeight: FontWeight.w600)),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 10.h,
                                          width: 10.w,
                                          decoration: BoxDecoration(
                                              color: Colors.green.shade600,
                                              shape: BoxShape.circle),
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          "Available Today",
                                          style: TextStyle(
                                              color: Colors.green.shade600),
                                        )
                                      ],
                                    ),
                                  ),
                                  Text(
                                    "Rs. 500",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16.sp),
                                  )
                                ])
                          ],
                        ),
                      )
                    ]),
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const TimeSlot()));
                        },
                        child: Container(
                          height: 40.h,
                          width: 190.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                              border: Border.all(
                                  color: AppColor.pinkcolor, width: 1.30.w)),
                          child: Center(
                            child: Text(
                              "Video Consultation",
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  color: AppColor.pinkcolor,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 40.h,
                        width: 190.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            color: AppColor.orangColor),
                        child: Center(
                          child: Text(
                            "Book Appointment",
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
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
      )),
    );
  }
}

Widget contactContainer(String title) {
  return Container(
    height: 50.h,
    width: 180.w,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: Colors.blue.shade900)),
    child: Row(
      children: [
        Container(
          height: 50.h,
          width: 60.w,
          decoration: BoxDecoration(
              color: Colors.blue.shade900,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.r),
                  bottomLeft: Radius.circular(8.r))),
          child: const Center(
            child: Icon(
              Icons.location_on_outlined,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 30.h,
              width: 75.w,
              
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.blue.shade900,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        )
      ],
    ),
  );
}
