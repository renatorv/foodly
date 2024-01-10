import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/common/reusable_text.dart';

import '../constants/constants.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      height: 110.h,
      color: kOffWhite,
      child: Container(
        margin: EdgeInsets.only(top: 20.r),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CircleAvatar(
              radius: 22.r,
              // backgroundImage: const NetworkImage(''),
              backgroundColor: kSecondary,
              backgroundImage:
                  const NetworkImage('https://d326fntlu7tb1e.cloudfront.net/uploads/bdec9d7d-0544-4fc4-823d-3b898f6dbbbf-vinci_03.jpeg'),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 6.h, left: 8.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReusableText(
                    text: 'Deliver to',
                    style: appStyle(13, kSecondary, FontWeight.w600),
                  ),
                  SizedBox(
                    width: width * .65,
                    child: Text(
                      '16786 21st Ave N, Playmount, NM 55447',
                      overflow: TextOverflow.ellipsis,
                      style: appStyle(11, kGrayLight, FontWeight.normal),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              getTimeOfDay(),
              style: const TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }

  String getTimeOfDay() {
    DateTime now = DateTime.now();
    int hour = now.hour;

    if (hour >= 0 && hour <= 12) {
      return ' ☀️ ';
    } else if (hour >= 12 && hour <= 16) {
      return ' ⛅ ';
    } else {
      return ' 🌙 ';
    }
  }
}
