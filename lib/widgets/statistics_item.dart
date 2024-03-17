import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatisticsItem extends StatelessWidget {
  const StatisticsItem({required this.count, required this.title, super.key});

  final String count, title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: TextStyle(
              fontFamily: 'Gellix',
              fontWeight: FontWeight.w700,
              fontSize: 16.sp,
              color: Colors.white),
        ),
        Text(
          title,
          style: TextStyle(
              fontFamily: 'Gellix',
              fontWeight: FontWeight.w500,
              fontSize: 12.sp,
              color: Colors.white),
        ),
      ],
    );
  }
}
