import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:saloon/Home/online_consultant_appointment.dart';
import 'package:saloon/globals/ui_widget.dart';
import 'package:saloon/globals/colors.dart';

class VideoConsultaion extends StatefulWidget {
  const VideoConsultaion({Key? key}) : super(key: key);

  @override
  _VideoConsultaionState createState() => _VideoConsultaionState();
}

class _VideoConsultaionState extends State<VideoConsultaion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            topContainer("Video Consultation"),
            SizedBox(
              height: 20.h,
            ),
            Text("Online Video Consultation",
                style: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w500)),
            Text(
              "APPOINTMENTS",
              style: TextStyle(
                  fontSize: 23.sp,
                  color: AppColor.pinkcolor,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.h,
            ),
            card(
              () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            OnlineConsultantAppointment("Dermatologist!")));
              },
              "assets/images/videoconsultant.png",
              const Color(0xffE8FCF9),
              "Online Consultations",
              "Start Video Consultations",
              "with Dermatologists",
              Colors.white,
              AppColor.orangColor,
              AppColor.orangColor,
              Colors.white,
            ),
            SizedBox(
              height: 10.h,
            ),
            card(() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          OnlineConsultantAppointment("Specialist!")));
            },
                "assets/images/salon.png",
                const Color(0xffE8FCF9),
                "Sal-One Care",
                "Start Video Consultations",
                "with Top Specialists",
                Colors.black,
                AppColor.orangColor,
                Colors.white,
                Colors.black)
          ],
        ),
      ),
    );
  }
}

Widget card(
    VoidCallback onpressed,
    String image,
    Color color,
    String title,
    String info1,
    String info2,
    Color buttontextcolor,
    Color bordercolor,
    Color buttoncolor,
    Color iconcolor) {
  return InkWell(
    onTap: onpressed,
    child: Card(
      child: SizedBox(
        height: 70.h,
        width: 271.w,
        child: Row(
          children: [
            Container(
              height: 69.h,
              width: 79.w,
              color: color,
              child: Image.asset(image),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: textStyle(11.sp, Colors.black, "poppinbold"),
                  ),
                  Text(
                    info1,
                    style:
                        textStyle(7.sp, AppColor.textfieldColor, "poppinbold"),
                  ),
                  Text(
                    info2,
                    style:
                        textStyle(7.sp, AppColor.textfieldColor, "poppinbold"),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Container(
                    height: 19.h,
                    width: 89.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.r),
                        color: buttoncolor,
                        border: Border.all(width: 0.50, color: bordercolor)),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Book Appointment",
                          style: textStyle(6.sp, buttontextcolor, "poppin"),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: iconcolor,
                          size: 10.h,
                        )
                      ],
                    )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      elevation: 1,
    ),
  );
}
