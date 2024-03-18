import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paint_an_app/widgets/post_description.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/beachImage.png'),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topLeft,
            ),
          ),
        ),
        Positioned(
          top: 60.h,
          left: 25.w,
          child: Row(
            children: [
              SizedBox(
                height: 50.h,
                width: 50.w,
                child: OutlinedButton.icon(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    side: BorderSide(
                      color: Colors.white,
                      width: 1.w,
                    ),
                  ),
                  label: Image.asset(
                    'assets/icons/backButtonIcon.png',
                    height: 19.h,
                    width: 14.9.w,
                  ),
                ),
              ),
              SizedBox(width: 215.w),
              SizedBox(
                height: 50.h,
                width: 50.w,
                child: OutlinedButton.icon(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    side: BorderSide(
                      color: Colors.white,
                      width: 1.w,
                    ),
                  ),
                  label: Image.asset(
                    'assets/icons/bookmarks.png',
                    height: 19.h,
                    width: 14.94.w,
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 326.57.h,
          left: 150.w,
          child: Image.asset('assets/icons/slide_point.png'),
        ),
        Positioned(
          top: 359.h,
          child: const PostDescription(),
        ),
      ],
    );
  }
}
