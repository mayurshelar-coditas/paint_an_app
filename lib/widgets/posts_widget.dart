import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostsWidget extends StatelessWidget {
  const PostsWidget({
    required this.image,
    required this.subject,
    required this.title,
    required this.date,
    required this.time,
    super.key,
  });

  final Image image;
  final String subject, title, date, time;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Card(
          shadowColor: const Color(0x19202D0D),
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(5.dg),
            child: image,
          ),
        ),
        SizedBox(
          width: 19.4.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              subject,
              style: TextStyle(
                fontFamily: 'Gellix',
                fontSize: 10.sp,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              title,
              style: TextStyle(
                fontFamily: 'Gellix',
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10.4.h,
            ),
            Row(
              children: [
                Image.asset('assets/icons/calender.png'),
                SizedBox(
                  width: 7.68.w,
                ),
                Text(
                  date,
                  style: TextStyle(
                    fontFamily: 'Gellix',
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 55.9.w,
                ),
                Image.asset('assets/icons/clock.png'),
                SizedBox(
                  width: 7.46.w,
                ),
                Text(
                  time,
                  style: TextStyle(
                    fontFamily: 'Gellix',
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
