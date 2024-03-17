import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paint_an_app/widgets/statistics_item.dart';

class StatsContainer extends StatelessWidget {
  const StatsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95.h,
      width: 315.w,
      decoration: BoxDecoration(
        color: const Color(0xFF19202D),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: 29.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            StatisticsItem(count: '54.21k', title: 'Followers'),
            Divider(
              color: Colors.white,
              thickness: 20,
              height: 38.h,
              indent: 26.w,
              endIndent: 35.w,
            ),
            StatisticsItem(count: '2.11k', title: 'Posts'),
            Divider(
              color: Colors.white,
              height: 38.h,
              thickness: 1,
              indent: 35.w,
              endIndent: 27.w,
            ),
            StatisticsItem(count: '36.40k', title: 'Followers'),
          ],
        ),
      ),
    );
  }
}
