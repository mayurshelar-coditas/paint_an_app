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
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: const TextStyle(
                  fontFamily: 'Gellix',
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10.4,
            ),
            Row(
              children: [
                Image.asset('assets/icons/calender.png'),
                const SizedBox(
                  width: 7.68,
                ),
                Text(
                  date,
                  style: const TextStyle(
                      fontFamily: 'Gellix',
                      fontSize: 11,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  width: 55.9,
                ),
                Image.asset('assets/icons/clock.png'),
                const SizedBox(
                  width: 7.46,
                ),
                Text(
                  time,
                  style: const TextStyle(
                      fontFamily: 'Gellix',
                      fontSize: 11,
                      fontWeight: FontWeight.w500),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
