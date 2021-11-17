import 'package:flutter/material.dart';
import 'package:saloon/Home/appointment_scrn.dart';
import 'package:saloon/Home/Contact_Us.dart';
import 'package:saloon/Home/trending_scrn.dart';
import 'package:saloon/Home/video_consultant.dart';
import 'package:saloon/Home/deals.dart';
import 'package:saloon/Home/home_page.dart';
import 'package:saloon/Home/undefindedPage.dart';
import 'package:saloon/globals/ui_widget.dart';
import 'package:saloon/globals/colors.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 3;
  late PageController _pageController;

  List<Widget> classesOptions = [
    const UndefinedPage(),
    const Trending(),
    const Deals(),
    const HomePage(),
    const AppointMent(),
    const ContactUs(),
    const VideoConsultaion()
  ];
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 45.h,
        child: BottomAppBar(
          child: Row(children: [
            Expanded(
                child: InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = 0;
                });
              },
              child: Image.asset(
                "assets/images/Icon1@2x.png",
                height: _selectedIndex == 0 ? 31.h : 28.h,
                color: _selectedIndex == 0 ? AppColor.pinkcolor : null,
              ),
            )),
            Expanded(
                child: InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = 1;
                });
              },
              child: Image.asset(
                "assets/images/Icon2@2x.png",
                height: _selectedIndex == 1 ? 31.h : 28.h,
                color: _selectedIndex == 1 ? AppColor.pinkcolor : null,
              ),
            )),
            Expanded(
                child: InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = 2;
                });
              },
              child: Image.asset(
                "assets/images/Icon3@2x.png",
                height: _selectedIndex == 2 ? 31.h : 28.h,
                color: _selectedIndex == 2 ? AppColor.pinkcolor : null,
              ),
            )),
            Expanded(
                child: InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = 3;
                });
              },
              child: Image.asset(
                "assets/images/Icon4@2x.png",
                height: _selectedIndex == 3 ? 31.h : 28.h,
                color: _selectedIndex == 3 ? AppColor.pinkcolor : null,
              ),
            )),
            Expanded(
                child: InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = 4;
                });
              },
              child: Image.asset(
                "assets/images/Icon5@2x.png",
                height: _selectedIndex == 4 ? 31.h : 28.h,
                color: _selectedIndex == 4 ? AppColor.pinkcolor : null,
              ),
            )),
            Expanded(
                child: InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = 5;
                });
              },
              child: Image.asset(
                "assets/images/Icon6@2x.png",
                height: _selectedIndex == 5 ? 31.h : 28.h,
                color: _selectedIndex == 5 ? AppColor.pinkcolor : null,
              ),
            )),
            Expanded(
                child: InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = 6;
                });
              },
              child: Image.asset(
                "assets/images/Icon7@2x.png",
                height: _selectedIndex == 6 ? 31.h : 28.h,
                color: _selectedIndex == 6 ? AppColor.pinkcolor : null,
              ),
            ))
          ]),
        ),
      ),
      // body: SafeArea(
      //     child: PageView(
      //         controller: _pageController,
      //         onPageChanged: (index) {
      //           setState(() => _selectedIndex = index);
      //         },
      //         children: classesOptions)),
      body: SafeArea(child: classesOptions[_selectedIndex]),
    );
  }
}
