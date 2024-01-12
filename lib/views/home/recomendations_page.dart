import 'package:flutter/material.dart';
import 'package:foodly/constants/constants.dart';

import '../../common/app_style.dart';
import '../../common/reusable_text.dart';

class RecomendationsPage extends StatelessWidget {
  const RecomendationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: .3,
        backgroundColor: kOffWhite,
        title: ReusableText(
          text: 'Recomendations',
          style: appStyle(
            13,
            kGray,
            FontWeight.w600,
          ),
        ),
      ),
      body: const Center(
        child: Text('All Recomendations'),
      ),
    );
  }
}
