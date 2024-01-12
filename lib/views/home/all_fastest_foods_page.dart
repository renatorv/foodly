import 'package:flutter/material.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/common/reusable_text.dart';

import '../../constants/constants.dart';

class AllFastestFoodsPage extends StatelessWidget {
  const AllFastestFoodsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: .3,
        backgroundColor: kOffWhite,
        title: ReusableText(
          text: 'All Fastest Foods',
          style: appStyle(
            13,
            kGray,
            FontWeight.w600,
          ),
        ),
      ),
      body: const Center(
        child: Text('All Fastest Foods'),
      ),
    );
  }
}
