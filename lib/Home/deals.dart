import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saloon/globals/ui_widget.dart';
import 'package:saloon/globals/colors.dart';

class Deals extends StatefulWidget {
  const Deals({Key? key}) : super(key: key);

  @override
  _DealsState createState() => _DealsState();
}

class _DealsState extends State<Deals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 34.h,
                width: 376.w,
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                        height: 33.h,
                        width: 327.w,
                        child: TextField(
                          decoration: InputDecoration(
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.all(2),
                              hintText: "Search",
                              hintStyle: TextStyle(
                                  fontSize: 12.sp, fontFamily: "poppin"),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.black54,
                              )),
                        )),
                    Container(
                      width: 48.w,
                      height: 33.h,
                      child: Image.asset("assets/images/Location.png"),
                      color: AppColor.orangColor,
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              dealsContainer(),
              SizedBox(height: 10.h),
              dealsContainer(),
              SizedBox(height: 10.h),
              dealsContainer(),
              SizedBox(height: 10.h),
              dealsContainer(),
              SizedBox(height: 10.h),
              dealsContainer(),
            ],
          ),
        ));
  }
}

Widget dealsContainer() {
  return Container(
    height: 60.h,
    width: 371.w,
    color: Colors.white,
    child: Row(
      children: [
        Image.asset("assets/images/dulhan.png"),
        SizedBox(
          width: 15.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Herbal Essential Facial",
              style: textStyle(12.sp, Colors.black, "poppin"),
            ),
            Text(
              "Nadia Hassan salon Peshawar",
              style: textStyle(8.sp, AppColor.textfieldColor, "poppin"),
            ),
            Row(children: [
              Image.asset("assets/images/L.png"),
              Text("Search on Google Map",
                  style: textStyle(7.sp, Colors.blue, "poppin"))
            ]),
            Text(
              "Flat 15% Off",
              style: textStyle(10.sp, Colors.red, "poppin"),
            ),
          ],
        ),
        SizedBox(
          width: 70.w,
        ),
        Container(
          height: 30.h,
          width: 30.h,
          decoration: BoxDecoration(
              border: Border.all(width: 1.w, color: AppColor.orangColor)),
          child: Center(
            child: Icon(Icons.add, color: AppColor.orangColor),
          ),
        )
      ],
    ),
  );
}
