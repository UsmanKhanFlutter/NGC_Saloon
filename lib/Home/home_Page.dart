// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:saloon/Home/about_studio.dart';
import 'package:saloon/Home/fina_a_salon.dart';
import 'package:saloon/globals/ui_widget.dart';
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
  final scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldkey,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.phone,
            color: Colors.white,
          ),
          backgroundColor: Colors.orange,
        ),
        drawer: Container(
          height: double.infinity,
          width: 282.w,
          color: const Color(0xffE8E8E8),
          child: Column(
            children: [
              Container(
                height: 150.h,
                width: double.infinity,
                color: AppColor.pinkcolor,
                child: Column(
                  children: [
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      "Gulalay",
                      style: textStyle(20.sp, Colors.white, "poppinbold"),
                    ),
                    Text(
                      "+9273389098",
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 10.h,
                          width: 180.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(3.r)),
                          child: Row(
                            children: [
                              Container(
                                  height: 10.h,
                                  width: 90.w,
                                  color: Colors.green),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          "50%",
                          style: TextStyle(
                              fontSize: 13.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      height: 30.h,
                      width: 185.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.r),
                          border: Border.all(color: Colors.white, width: 1.w)),
                      child: Center(
                          child: Text("Complete Your Profile",
                              style: TextStyle(
                                  fontSize: 13.h, color: Colors.white))),
                    )
                  ],
                ),
              ),
              Container(
                height: 1.50.h,
                width: double.infinity,
                color: const Color(0xffAEAEAE),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                SizedBox(
                  width: 30.h,
                ),
                Text("My Profile",
                    style: textStyle(18.sp, Colors.black, "poppin")),
                SizedBox(
                  width: 115.w,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black54,
                  size: 15.h,
                )
              ]),
              SizedBox(
                height: 8.h,
              ),
              Container(
                height: 1.h,
                width: double.infinity,
                color: const Color(0xffAEAEAE),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                SizedBox(
                  width: 30.h,
                ),
                Text("Recent Salons",
                    style: textStyle(18.sp, Colors.black, "poppin")),
                SizedBox(
                  width: 70.w,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black54,
                  size: 15.h,
                )
              ]),
              SizedBox(
                height: 8.h,
              ),
              Container(
                height: 1.h,
                width: double.infinity,
                color: const Color(0xffAEAEAE),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                SizedBox(
                  width: 30.h,
                ),
                Text("Wallet", style: textStyle(18.sp, Colors.black, "poppin")),
                SizedBox(
                  width: 10.h,
                ),
                Container(
                  height: 17.h,
                  width: 35.w,
                  decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.circular(5.r)),
                  child: Center(
                    child: Text(
                      "Rs.0",
                      style: textStyle(10.sp, Colors.black, "poppin"),
                    ),
                  ),
                ),
                SizedBox(
                  width: 100.w,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black54,
                  size: 15.h,
                )
              ]),
              SizedBox(
                height: 8.h,
              ),
              Container(
                height: 1.h,
                width: double.infinity,
                color: const Color(0xffAEAEAE),
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                SizedBox(
                  width: 30.h,
                ),
                Text("Refer a Friend",
                    style: textStyle(18.sp, Colors.black, "poppin")),
                SizedBox(
                  width: 70.w,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black54,
                  size: 15.h,
                )
              ]),
              SizedBox(
                height: 8.h,
              ),
              Container(
                height: 1.h,
                width: double.infinity,
                color: const Color(0xffAEAEAE),
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                SizedBox(
                  width: 30.h,
                ),
                Text("Logout", style: textStyle(18.sp, Colors.black, "poppin")),
                SizedBox(
                  width: 140.w,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black54,
                  size: 15.h,
                )
              ]),
            ],
          ),
        ),
        backgroundColor: Colors.grey[200],
        body: SingleChildScrollView(
          child: Column(
            children: [
              appBar(() {
                scaffoldkey.currentState!.openDrawer();
              }),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Row(children: [
                  Text(
                    "Good Morning!",
                    style: textStyle(22.sp, Colors.grey.shade700, "poppin"),
                  )
                ]),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FindSalon()));
                  },
                  child: Container(
                      height: 80.h,
                      width: 190.w,
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/videoconsultant.png",
                            height: 75.h,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Find and",
                                style: TextStyle(
                                    fontSize: 16.sp, color: Colors.black),
                              ),
                              Text(
                                "Book Salon",
                                style: TextStyle(
                                    fontSize: 16.sp, color: Colors.black),
                              )
                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.r),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 0.0), //(x,y)
                            blurRadius: 1.0,
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  width: 10.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FindSalon()));
                  },
                  child: Container(
                      height: 80.h,
                      width: 190.w,
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/salon.png",
                            height: 75.h,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Book Online",
                                style: TextStyle(
                                    fontSize: 16.sp, color: Colors.black),
                              ),
                              Text(
                                "Video Cons..",
                                style: TextStyle(
                                    fontSize: 16.sp, color: Colors.black),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 50.h),
                            child: Image.asset(
                              "assets/images/pinkcam.png",
                              height: 20.h,
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 0.0), //(x,y)
                            blurRadius: 1.0,
                          ),
                        ],
                      )),
                )
              ]),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 120.h,
                width: 392.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.r),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 0.0), //(x,y)
                      blurRadius: 1.0,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            "Find a Salon",
                            style: textStyle(
                                18.sp, Colors.grey.shade600, "poppin"),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Container(
                            height: 8.h,
                            width: 8.w,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.orange[400]),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                          height: 40.h,
                          width: 370.w,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black26)),
                          child: TextField(
                            decoration: InputDecoration(
                                prefixIcon:
                                    Icon(Icons.search, color: Colors.black38),
                                enabledBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                hintText: "Salon, Services, Ratings.....",
                                hintStyle: textStyle(
                                    13.sp, Colors.black38, "myriadpro")),
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 150.h,
                    width: 194.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 0.0), //(x,y)
                          blurRadius: 1.0,
                        ),
                      ],
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 11.h,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              "Salone Care",
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "VIdeo Consultation with",
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black54)),
                                TextSpan(
                                    text: " Top Specialists in",
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black54)),
                                TextSpan(
                                    text: " Rs:500",
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black)),
                              ]),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                              height: 35.h,
                              width: double.infinity,
                              color: AppColor.pinkLight,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Book Appointment",
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: Colors.orange,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.orange,
                                      size: 12.h,
                                    )
                                  ]))
                        ]),
                  ),
                  SizedBox(
                    width: 5.h,
                  ),
                  Container(
                    height: 150.h,
                    width: 194.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 0.0), //(x,y)
                          blurRadius: 1.0,
                        ),
                      ],
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10.h,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Dermatologists",
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                                Text(" Online Now",
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Instant Video",
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black54)),
                                TextSpan(
                                    text: " Consultation with Top",
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black54)),
                                TextSpan(
                                    text: " Dermatologists",
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black54)),
                              ]),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                              height: 35.h,
                              width: double.infinity,
                              color: const Color(0xffE8FCF9),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Start Consulting",
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.black,
                                      size: 12.h,
                                    )
                                  ]))
                        ]),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                  height: 300.h,
                  width: 394.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 0.0), //(x,y)
                        blurRadius: 1.0,
                      ),
                    ],
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 15),
                          child: Text(
                            "Top Specialties",
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            specialityRoundContainers("Hair"),
                            specialityRoundContainers("MakeUp"),
                            specialityRoundContainers("Facials"),
                          ],
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        Row(
                          children: [
                            specialityRoundContainers("Hair"),
                            specialityRoundContainers("MakeUp"),
                            specialityRoundContainers("Facials"),
                          ],
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 30.h,
                              width: 350.w,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                color: Colors.blue.shade900,
                              )),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Find Other Speciality"),
                                  Icon(Icons.arrow_forward,
                                      color: Colors.blue.shade900)
                                ],
                              ),
                            ),
                          ],
                        )
                      ])),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 35.h,
                width: 380.w,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(3.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Do you have a corporate insurance?",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 5.h,
                    ),
                    Container(
                      height: 22.h,
                      width: 100.w,
                      color: Colors.white,
                      child: const Center(
                          child: Text(
                        "Connect Now",
                        style: TextStyle(color: Colors.orange),
                      )),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 135.h,
                width: 394.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 0.0), //(x,y)
                      blurRadius: 1.0,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 15),
                      child: Text(
                        "Top Salons",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 90.h,
                      width: double.infinity,
                      child:
                          ListView(scrollDirection: Axis.horizontal, children: [
                        SizedBox(
                          width: 10.h,
                        ),
                        Column(children: [
                          Container(
                            height: 60.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(5.r)),
                            child: Icon(
                              Icons.maps_home_work_outlined,
                              size: 45.h,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          const Text(
                            "Glam Studio",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          )
                        ]),
                        SizedBox(
                          width: 10.h,
                        ),
                        Column(children: [
                          Container(
                            height: 60.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(5.r)),
                            child: Icon(
                              Icons.maps_home_work_outlined,
                              size: 45.h,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          const Text(
                            "Glam Bar",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          )
                        ]),
                        SizedBox(
                          width: 10.h,
                        ),
                        Column(children: [
                          Container(
                            height: 60.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(5.r)),
                            child: Icon(
                              Icons.maps_home_work_outlined,
                              size: 45.h,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          const Text(
                            "Cazibe",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          )
                        ]),
                        SizedBox(
                          width: 10.h,
                        ),
                        Column(children: [
                          Container(
                            height: 60.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(5.r)),
                            child: Icon(
                              Icons.maps_home_work_outlined,
                              size: 45.h,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          const Text(
                            "Blossoms",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          )
                        ]),
                        SizedBox(
                          width: 10.h,
                        ),
                        Column(children: [
                          Container(
                            height: 60.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(5.r)),
                            child: Icon(
                              Icons.maps_home_work_outlined,
                              size: 45.h,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          const Text(
                            "Grooms",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          )
                        ])
                      ]),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ));
  }
}

Widget specialityRoundContainers(String title) {
  return Expanded(
    child: Column(
      children: [
        Container(
          height: 55.h,
          width: 55.w,
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: Colors.orange),
        ),
        Text(title,
            style: TextStyle(
                fontSize: 15.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold))
      ],
    ),
  );
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

Widget salonContainer(VoidCallback onpressed) {
  return InkWell(
    onTap: onpressed,
    child: Container(
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
        )),
  );
}

//  Container(
//                 height: 34.h,
//                 width: 376.w,
//                 color: AppColor.textfieldColor,
//                 child: Row(
//                   children: [
//                     Container(
//                         height: 33.h,
//                         width: 327.w,
//                         child: TextField(
//                           decoration: InputDecoration(
//                               focusedBorder: InputBorder.none,
//                               enabledBorder: InputBorder.none,
//                               disabledBorder: InputBorder.none,
//                               contentPadding: EdgeInsets.all(2),
//                               hintText: "Search for Beauty Salons",
//                               hintStyle: TextStyle(
//                                   fontSize: 12.sp, fontFamily: "poppin"),
//                               prefixIcon: Icon(
//                                 Icons.search,
//                                 color: Colors.black54,
//                               )),
//                         )),
//                     Container(
//                       width: 48.w,
//                       height: 33.h,
//                       child: Image.asset("assets/images/Location.png"),
//                       color: AppColor.orangColor,
//                     )
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 10.h,
//               ),
//               Container(
//                 width: 376.w,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "Categories",
//                       style: textStyle(14.sp, Colors.black, "poppin"),
//                     ),
//                     Text(
//                       "View all",
//                       style: textStyle(10.sp, Colors.black, "poppin"),
//                     )
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 10.h,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   categoriesContainer("assets/images/makeup.png", "Make Up",
//                       () {
//                     setState(() {
//                       makeup = true;
//                       skincare = false;
//                       nails = false;
//                       feet = false;
//                     });
//                   },
//                       makeup ? AppColor.orangColor : AppColor.textfieldColor,
//                       makeup ? Colors.white : Colors.black54,
//                       makeup ? Colors.white : Colors.black54),
//                   categoriesContainer("assets/images/Facial.png", "Skin Care",
//                       () {
//                     setState(() {
//                       makeup = false;
//                       skincare = true;
//                       nails = false;
//                       feet = false;
//                     });
//                   },
//                       skincare ? AppColor.orangColor : AppColor.textfieldColor,
//                       skincare ? Colors.white : Colors.black54,
//                       skincare ? Colors.white : Colors.black54),
//                   categoriesContainer("assets/images/Nail.png", "Nails", () {
//                     setState(() {
//                       makeup = false;
//                       skincare = false;
//                       nails = true;
//                       feet = false;
//                     });
//                   },
//                       nails ? AppColor.orangColor : AppColor.textfieldColor,
//                       nails ? Colors.white : Colors.black54,
//                       nails ? Colors.white : Colors.black54),
//                   categoriesContainer("assets/images/Feet.png", "Feet", () {
//                     setState(() {
//                       makeup = false;
//                       skincare = false;
//                       nails = false;
//                       feet = true;
//                     });
//                   },
//                       feet ? AppColor.orangColor : AppColor.textfieldColor,
//                       feet ? Colors.white : Colors.black54,
//                       feet ? Colors.white : Colors.black54),
//                 ],
//               ),
//               SizedBox(
//                 height: 20.h,
//               ),
//               salonContainer(() {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => const AboutStudio()));
//               }),
//               SizedBox(
//                 height: 10.h,
//               ),
//               salonContainer(() {}),
//               SizedBox(
//                 height: 10.h,
//               ),
//               salonContainer(() {}),
//               SizedBox(
//                 height: 10.h,
//               ),
//               salonContainer(() {}),
