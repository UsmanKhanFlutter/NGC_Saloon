import 'package:flutter/material.dart';
import 'package:saloon/globals/UI_widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saloon/globals/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool makeup = true;
  bool skincare = false;
  bool nails = false;
  bool feet = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          appBar(),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 34.h,
            width: 376.w,
            color: AppColor.textfieldColor,
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
                          hintText: "Search for Beauty Salons",
                          hintStyle:
                              TextStyle(fontSize: 12.sp, fontFamily: "poppin"),
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
          SizedBox(
            height: 10.h,
          ),
          Container(
            width: 376.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: textStyle(14.sp, Colors.black, "poppin"),
                ),
                Text(
                  "View all",
                  style: textStyle(10.sp, Colors.black, "poppin"),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              categoriesContainer("assets/images/makeup.png", "Make Up", () {
                setState(() {
                  makeup = true;
                  skincare = false;
                  nails = false;
                  feet = false;
                });
              },
                  makeup ? AppColor.orangColor : AppColor.textfieldColor,
                  makeup ? Colors.white : Colors.black54,
                  makeup ? Colors.white : Colors.black54),
              categoriesContainer("assets/images/Facial.png", "Skin Care", () {
                setState(() {
                  makeup = false;
                  skincare = true;
                  nails = false;
                  feet = false;
                });
              },
                  skincare ? AppColor.orangColor : AppColor.textfieldColor,
                  skincare ? Colors.white : Colors.black54,
                  skincare ? Colors.white : Colors.black54),
              categoriesContainer("assets/images/Nail.png", "Nails", () {
                setState(() {
                  makeup = false;
                  skincare = false;
                  nails = true;
                  feet = false;
                });
              },
                  nails ? AppColor.orangColor : AppColor.textfieldColor,
                  nails ? Colors.white : Colors.black54,
                  nails ? Colors.white : Colors.black54),
              categoriesContainer("assets/images/Feet.png", "Feet", () {
                setState(() {
                  makeup = false;
                  skincare = false;
                  nails = false;
                  feet = true;
                });
              },
                  feet ? AppColor.orangColor : AppColor.textfieldColor,
                  feet ? Colors.white : Colors.black54,
                  feet ? Colors.white : Colors.black54),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          salonContainer(),
          SizedBox(
            height: 10.h,
          ),
          salonContainer(),
          SizedBox(
            height: 10.h,
          ),
          salonContainer(),
          SizedBox(
            height: 10.h,
          ),
          salonContainer(),
        ],
      ),
    ));
  }
}

Widget categoriesContainer(String image, String title, VoidCallback onpressed,
    Color containerColor, Color textcolor, Color imageColor) {
  return InkWell(
    onTap: onpressed,
    child: Container(
      height: 26.h,
      width: 76.w,
      decoration: BoxDecoration(
          color: containerColor, borderRadius: BorderRadius.circular(2.r)),
      child: Row(
        children: [
          Image.asset(
            image,
            color: imageColor,
          ),
          Text(
            title,
            style: textStyle(9.sp, textcolor, "poppin"),
          )
        ],
      ),
    ),
  );
}

Widget salonContainer() {
  return Container(
      height: 96.h,
      width: 366.w,
      decoration: BoxDecoration(
          color: Color(0xffFFF8F1), borderRadius: BorderRadius.circular(2.r)),
      child: Row(
        children: [
          Container(
            height: 95.h,
            width: 107.w,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/salonPic.png"))),
          ),
          SizedBox(
            width: 10.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 4),
                child: Text(
                  "GlamStudio",
                  style: textStyle(13.sp, Colors.black, "poppin"),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: AppColor.orangColor,
                    size: 13.h,
                  ),
                  SizedBox(
                    width: 3.h,
                  ),
                  Text(
                    "Near Zarghuni Masjid, Phase 2 Hayatabad Peshawar",
                    style: textStyle(6.sp, Colors.black, "poppin"),
                  )
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.timer,
                    color: AppColor.orangColor,
                    size: 13.h,
                  ),
                  SizedBox(
                    width: 3.h,
                  ),
                  Text(
                    "11:OO AM - 07:00 PM",
                    style: textStyle(6.sp, Colors.black, "poppin"),
                  )
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: AppColor.orangColor,
                    size: 13.h,
                  ),
                  SizedBox(
                    width: 3.h,
                  ),
                  Text(
                    "+92 4375 7824",
                    style: textStyle(6.sp, Colors.black, "poppin"),
                  )
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.thumb_up,
                    color: AppColor.orangColor,
                    size: 13.h,
                  ),
                  SizedBox(
                    width: 3.h,
                  ),
                  Text(
                    "3.9",
                    style: textStyle(6.sp, Colors.black, "poppin"),
                  )
                ],
              )
            ],
          )
        ],
      ));
}
