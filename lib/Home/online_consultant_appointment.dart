import 'package:flutter/material.dart';
import 'package:saloon/globals/colors.dart';
import 'package:saloon/globals/ui_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnlineConsultantAppointment extends StatefulWidget {
  String? specialist;
  OnlineConsultantAppointment(this.specialist, {Key? key}) : super(key: key);

  @override
  _OnlineConsultantAppointmentState createState() =>
      _OnlineConsultantAppointmentState();
}

class _OnlineConsultantAppointmentState
    extends State<OnlineConsultantAppointment> {
  List<String> dropdownData = [
    "For Yourself",
    "For Someone Else",
  ];
  String? _selectedColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            topContainer("Video Consultation"),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Online Video Consultation",
              style: textStyle(24.sp, Colors.black, "poppinmed"),
            ),
            Text(
              "APPOINTMENT",
              style: textStyle(28.h, AppColor.pinkcolor, "poppinbold"),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Schedule an Appointment with Top ${widget.specialist}",
              style: textStyle(14.sp, Colors.black, "poppinsemi"),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
                height: 37.h,
                width: 339.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.r),
                  color: AppColor.textfieldColor,
                ),
                child: DropdownButton<String>(
                  onChanged: (value) {
                    setState(() {
                      _selectedColor = value;
                    });
                  },
                  value: _selectedColor,
                  dropdownColor: AppColor.pinkcolor,

                  // Hide the default underline
                  underline: Container(),
                  hint: Row(
                    children: [
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        height: 18.h,
                        width: 18.w,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.grey[600]),
                        child: Icon(
                          Icons.person,
                          size: 15.h,
                        ),
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      Text(
                        'Name',
                        style: TextStyle(color: Colors.black, fontSize: 12.sp),
                      ),
                    ],
                  ),
                  icon: const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                  isExpanded: true,

                  // The list of options
                  items: dropdownData
                      .map((e) => DropdownMenuItem(
                            child: Center(
                              child: Text(
                                e,
                                style: const TextStyle(fontSize: 18),
                              ),
                            ),
                            value: e,
                          ))
                      .toList(),
                )),
            SizedBox(
              height: 10.h,
            ),
            Container(
                height: 37.h,
                width: 339.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.r),
                  color: AppColor.textfieldColor,
                ),
                child: DropdownButton<String>(
                  onChanged: (value) {
                    setState(() {
                      _selectedColor = value;
                    });
                  },
                  value: _selectedColor,
                  dropdownColor: AppColor.pinkcolor,

                  // Hide the default underline
                  underline: Container(),
                  hint: Row(
                    children: [
                      SizedBox(
                        width: 10.w,
                      ),
                      Icon(
                        Icons.timer,
                        size: 15.h,
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      Text(
                        'Time',
                        style: TextStyle(color: Colors.black, fontSize: 12.sp),
                      ),
                    ],
                  ),
                  icon: const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                  isExpanded: true,

                  // The list of options
                  items: dropdownData
                      .map((e) => DropdownMenuItem(
                            child: Center(
                              child: Text(
                                e,
                                style: const TextStyle(fontSize: 18),
                              ),
                            ),
                            value: e,
                          ))
                      .toList(),
                )),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 203.h,
              width: 339.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.r),
                  color: AppColor.textfieldColor),
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 50.w,
                      ),
                      Text(
                        "keratin",
                        style: textStyle(10.sp, Colors.black, "poppin"),
                      ),
                      SizedBox(
                        width: 50.w,
                      ),
                      Text(
                        "PKR 12000 /-",
                        style: textStyle(10.sp, Colors.black, "poppin"),
                      ),
                      SizedBox(
                        width: 50.w,
                      ),
                      Icon(
                        Icons.check,
                        color: Colors.green,
                        size: 20.h,
                      )
                    ],
                  ),
                  Container(
                    height: 1.h,
                    width: 320.w,
                    color: Colors.black26,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 50.w,
                      ),
                      Text(
                        "keratin",
                        style: textStyle(10.sp, Colors.black, "poppin"),
                      ),
                      SizedBox(
                        width: 50.w,
                      ),
                      Text(
                        "PKR 12000 /-",
                        style: textStyle(10.sp, Colors.black, "poppin"),
                      ),
                      SizedBox(
                        width: 50.w,
                      ),
                      Icon(
                        Icons.check,
                        color: Colors.green,
                        size: 20.h,
                      )
                    ],
                  ),
                  Container(
                    height: 1.h,
                    width: 320.w,
                    color: Colors.black26,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 50.w,
                      ),
                      Text(
                        "keratin",
                        style: textStyle(10.sp, Colors.black, "poppin"),
                      ),
                      SizedBox(
                        width: 50.w,
                      ),
                      Text(
                        "PKR 12000 /-",
                        style: textStyle(10.sp, Colors.black, "poppin"),
                      ),
                      SizedBox(
                        width: 50.w,
                      ),
                      Icon(
                        Icons.check,
                        color: Colors.green,
                        size: 20.h,
                      )
                    ],
                  ),
                  Container(
                    height: 1.h,
                    width: 320.w,
                    color: Colors.black26,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 50.w,
                      ),
                      Text(
                        "keratin",
                        style: textStyle(10.sp, Colors.black, "poppin"),
                      ),
                      SizedBox(
                        width: 50.w,
                      ),
                      Text(
                        "PKR 12000 /-",
                        style: textStyle(10.sp, Colors.black, "poppin"),
                      ),
                      SizedBox(
                        width: 50.w,
                      ),
                      Icon(
                        Icons.check,
                        color: Colors.green,
                        size: 20.h,
                      )
                    ],
                  ),
                  Container(
                    height: 1.h,
                    width: 320.w,
                    color: Colors.black26,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 50.w,
                      ),
                      Text(
                        "keratin",
                        style: textStyle(10.sp, Colors.black, "poppin"),
                      ),
                      SizedBox(
                        width: 50.w,
                      ),
                      Text(
                        "PKR 12000 /-",
                        style: textStyle(10.sp, Colors.black, "poppin"),
                      ),
                      SizedBox(
                        width: 50.w,
                      ),
                      Icon(
                        Icons.check,
                        color: Colors.green,
                        size: 20.h,
                      )
                    ],
                  ),
                  Container(
                    height: 1.h,
                    width: 320.w,
                    color: Colors.black26,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 50.w,
                      ),
                      Text(
                        "keratin",
                        style: textStyle(10.sp, Colors.black, "poppin"),
                      ),
                      SizedBox(
                        width: 50.w,
                      ),
                      Text(
                        "PKR 12000 /-",
                        style: textStyle(10.sp, Colors.black, "poppin"),
                      ),
                      SizedBox(
                        width: 50.w,
                      ),
                      Icon(
                        Icons.check,
                        color: Colors.green,
                        size: 20.h,
                      )
                    ],
                  ),
                  Container(
                    height: 1.h,
                    width: 320.w,
                    color: Colors.black26,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 36.h,
              width: 339.w,
              child: Center(
                child: Text(
                  "Book Appointment",
                  style: textStyle(17.sp, Colors.white, "poppin"),
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.r),
                  color: AppColor.orangColor),
            ),
          ],
        ),
      ),
    );
  }
}
