import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/back_ground_container.dart';
import 'package:foodly/constants/uidata.dart';
import 'package:foodly/views/home/widgets/restaurant_tile.dart';

import '../../common/app_style.dart';
import '../../common/reusable_text.dart';
import '../../constants/constants.dart';
import 'widgets/food_widget.dart';

class AllNearRestaurantsPage extends StatelessWidget {
  const AllNearRestaurantsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kOffWhite,
        title: ReusableText(
          text: 'All Near Restaurants',
          style: appStyle(
            13,
            kGray,
            FontWeight.w600,
          ),
        ),
      ),
      body: BackGroundContainer(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(12.h),
          child: ListView(
            children: List.generate(restaurants.length, (i) {
              var restaurant = restaurants[i];
              return RestaurantTile(
                restaurant: restaurant,
              );
            }),
          ),
        ),
      ),
    );
  }
}
