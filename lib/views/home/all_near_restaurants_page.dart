import 'package:flutter/material.dart';

import '../../common/app_style.dart';
import '../../common/reusable_text.dart';
import '../../constants/constants.dart';

class AllNearRestaurantsPage extends StatelessWidget {
  const AllNearRestaurantsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: .3,
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
      body: const Center(
        child: Text('All Near Restaurants'),
      ),
    );
  }
}
