import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/back_ground_container.dart';
import 'package:foodly/common/reusable_text.dart';
import 'package:foodly/constants/constants.dart';

import '../../common/app_style.dart';
import '../../constants/uidata.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kOffWhite,
        title: ReusableText(
          text: 'All Categories',
          style: appStyle(12, kGray, FontWeight.w600),
        ),
      ),
      body: BackGroundContainer(
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.only(left: 12, top: 10.h),
          height: height,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: List.generate(
              categories.length,
              (i) {
                var category = categories[i];
                return ListTile(
                  leading: CircleAvatar(
                    radius: 18.r,
                    backgroundColor: kGrayLight,
                    child: Image.network(
                      category['imageUrl'],
                      fit: BoxFit.contain,
                    ),
                  ),
                  title: ReusableText(
                    text: category['title'],
                    style: appStyle(12, kDark, FontWeight.normal),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: kGray,
                    size: 15.r,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
