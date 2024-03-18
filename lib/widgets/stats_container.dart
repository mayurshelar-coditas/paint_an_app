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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const StatisticsItem(count: '54.21k', title: 'Followers'),
            SizedBox(
              width: 26.w,
            ),
            Container(
              width: 1.w,
              height: 38.h,
              decoration: const BoxDecoration(
                color: Color(0xFFC1D4F9),
              ),
            ),
            SizedBox(
              width: 35.w,
            ),
            const StatisticsItem(count: '2.11k', title: 'Posts'),
            SizedBox(
              width: 35.w,
            ),
            Container(
              width: 1.w,
              height: 38.h,
              decoration: const BoxDecoration(
                color: Color(0xFFC1D4F9) ,
              ),
            ),
            SizedBox(
              width: 27.w,
            ),
            const StatisticsItem(count: '36.40k', title: 'Followers'),
          ],
        ),
      ),
    );
  }
}
