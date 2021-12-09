import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saloon/globals/colors.dart';
import 'package:saloon/globals/ui_widget.dart';

class FindSalon extends StatefulWidget {
  const FindSalon({Key? key}) : super(key: key);

  @override
  _FindSalonState createState() => _FindSalonState();
}

class _FindSalonState extends State<FindSalon> {
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
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
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
                ),
                Text(
                  "Find a Salon",
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  width: 40.w,
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                  width: double.infinity,
                  height: 65.h,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 0.0), //(x,y)
                        blurRadius: 4.0,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 40.h,
                          width: 370.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                              border: Border.all(color: Colors.black26)),
                          child: TextField(
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(8.0),
                                prefixIcon: const Icon(Icons.search,
                                    color: Colors.black38),
                                enabledBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                hintText: "Salon, Services, Location.....",
                                hintStyle: textStyle(
                                    13.sp, Colors.black38, "myriadpro")),
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 15.w),
                  child: Text(
                    "Search by speciality",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.grey[800],
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: 10.h),
                specialityContainer("Facial"),
                specialityContainer("Hands"),
                specialityContainer("Hair"),
                specialityContainer("hair"),
                specialityContainer("hair"),
                specialityContainer("hair"),
                specialityContainer("hair"),
              ],
            ),
          )
        ],
      )),
    );
  }
}

Widget specialityContainer(String title) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 45.h,
            width: 190.w,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5.r)),
            child: Row(children: [
              SizedBox(
                width: 10.w,
              ),
              CircleAvatar(
                radius: 20.r,
                backgroundColor: AppColor.orangColor,
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                title,
                style: TextStyle(
                    fontSize: 17.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              )
            ]),
          ),
          Container(
            height: 45.h,
            width: 190.w,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5.r)),
            child: Row(children: [
              SizedBox(
                width: 10.w,
              ),
              CircleAvatar(
                radius: 20.r,
                backgroundColor: AppColor.orangColor,
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                title,
                style: TextStyle(
                    fontSize: 17.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              )
            ]),
          )
        ],
      ),
      SizedBox(height: 10.h)
    ],
  );
}
