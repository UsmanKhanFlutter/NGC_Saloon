import 'package:flutter/material.dart';
import 'package:saloon/globals/ui_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saloon/globals/colors.dart';

class Trending extends StatefulWidget {
  const Trending({Key? key}) : super(key: key);

  @override
  _TrendingState createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/trending.png"),
              Text(
                "Explore What's Trending",
                style: textStyle(16.sp, Colors.black, "poppin"),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Card(
            elevation: 1,
            child: Container(
              height: 590.h,
              width: 388.w,
              color: Color(0xffFFECEC),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                    height: 120.h,
                    width: 120.w,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/images/salonPic.png"),
                            fit: BoxFit.fill)),
                  ),
                  Text(
                    "GlamStudio by Farial K.",
                    style: textStyle(16.sp, Colors.black, "poppinbold"),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Hair Treatment",
                        style: textStyle(13.sp, Colors.black, "poppinbold"),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Container(
                        height: 8.h,
                        width: 169.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6.r)),
                        child: Row(
                          children: [
                            Container(
                              height: 8.h,
                              width: 120.w,
                              decoration: BoxDecoration(
                                  color: AppColor.orangColor,
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
                      Image.asset("assets/images/trending.png")
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      "Other Services",
                      style: textStyle(13.sp, Colors.black, "poppinbold"),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Container(
                      height: 8.h,
                      width: 169.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6.r)),
                      child: Row(
                        children: [
                          Container(
                            height: 8.h,
                            width: 80.w,
                            decoration: BoxDecoration(
                                color: AppColor.orangColor,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(6.r),
                                  bottomRight: Radius.circular(6.r),
                                )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30.w,
                    )
                  ]),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                      Column(children: [
                        Container(
                          height: 69.h,
                          width: 69.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.thumb_up_sharp,
                                color: Colors.white,
                              ),
                              Text(
                                "97%",
                                style: textStyle(17.sp, Colors.white, "poppin"),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColor.orangColor),
                        ),
                        Text(
                          "Based on 300+ Ratings",
                          style: textStyle(10.sp, Colors.black, "poppin"),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Container(
                          width: 108.w,
                          height: 20.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2.r),
                              color: Color(0xffE8E8E8)),
                          child: Center(
                            child: Text(
                              "Show Profile",
                              style:
                                  textStyle(10.sp, Colors.black, "poppinbold"),
                            ),
                          ),
                        )
                      ]),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Customer Reviews",
                          style: textStyle(13.sp, Colors.black, "poppinbold"),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  customerReviewChart("5", "97%", 120),
                  customerReviewChart("4", "74%", 100),
                  customerReviewChart("3", "16%", 60),
                  customerReviewChart("2", "10%", 40),
                  customerReviewChart("1", "2%", 20),
                  SizedBox(
                    height: 50.h,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      "Would You Recommend it?",
                      style: textStyle(13.sp, Colors.black, "poppinbold"),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      width: 60.w,
                      height: 27.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.r),
                          color: Color(0xff0DC400)),
                      child: Center(
                          child: Text(
                        "YES",
                        style: textStyle(13.sp, Colors.white, "poppinbold"),
                      )),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Container(
                      width: 60.w,
                      height: 27.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.r),
                          border:
                              Border.all(color: Color(0xff0DC400), width: 1.w)),
                      child: Center(
                          child: Text(
                        "NO",
                        style: textStyle(13.sp, Colors.black, "poppinbold"),
                      )),
                    )
                  ]),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

Widget customerReviewChart(String number, String percnt, int width) {
  return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
    Text(
      number,
      style: textStyle(9.sp, Colors.black, "poppinbold"),
    ),
    SizedBox(
      width: 5.w,
    ),
    Container(
      height: 8.h,
      width: 179.w,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(6.r)),
      child: Row(
        children: [
          Container(
            height: 8.h,
            width: width.w,
            decoration: BoxDecoration(
                color: Color(0xffF8F800),
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
