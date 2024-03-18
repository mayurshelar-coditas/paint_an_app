import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostDescription extends StatelessWidget {
  const PostDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      height: 453.h,
      decoration: BoxDecoration(
        color: const Color(0xFFFCFCFC),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.r),
          topRight: Radius.circular(25.r),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 24.h),
          Padding(
            padding: EdgeInsets.only(
              left: 40.w,
            ),
            child: Text(
              "Unravel mysteries\nof the Maldives",
              style: TextStyle(
                fontFamily: 'Gellix',
                fontWeight: FontWeight.w700,
                fontSize: 32.sp,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30.w, 20.h, 30.w, 20.h),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                border: Border.all(
                  color: const Color(0xFFEEEEEE),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(12.w, 14.h, 12.w, 14.h),
                child: Row(
                  children: [
                    Container(
                      height: 26.h,
                      width: 26.w,
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      child: Image.asset('assets/images/userProfilePhoto.jpeg'),
                    ),
                    SizedBox(
                      width: 13.w,
                    ),
                    Text(
                      'Keanu Carpent May 17',
                      style: TextStyle(
                        fontFamily: 'Gellix',
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF9397A0),
                      ),
                    ),
                    SizedBox(width: 6.w),
                    Image.asset('assets/icons/dot.png'),
                    SizedBox(width: 8.w),
                    Text(
                      '8 min read',
                      style: TextStyle(
                        fontFamily: 'Gellix',
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF9397A0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w, right: 22.w),
            child: Text(
              "Just say anything, George, say what ever's natural, the first thing that comes to your mind. Take that you mutated son-of-a-bitch. My pine, why you. You space bastard, you killed a pine. You do? Yeah, it's 8:00. Hey, McFly, I thought I told you never",
              style: TextStyle(
                fontFamily: 'Gellix',
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF19202D),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
