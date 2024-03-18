import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paint_an_app/widgets/posts_widget.dart';
import 'package:paint_an_app/widgets/stats_container.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final List<Image> popularPhotos = [
    Image.asset(
      'assets/images/popular_post1.png',
    ),
    Image.asset(
      'assets/images/popular_post2.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    //Using safe area as our screen does not have appBar.
    return Padding(
      padding: EdgeInsets.only(left: 30.w, top: 51.h, bottom: 18.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/profilePhoto.png',
                height: 70.h,
                width: 70.w,
              ),
              SizedBox(
                width: 15.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Elly Byers',
                    style: TextStyle(
                      fontFamily: 'Gellix',
                      color: const Color(0xFF19202D),
                      fontWeight: FontWeight.w700,
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    'Author & Writer',
                    style: TextStyle(
                      fontFamily: 'Gellix',
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF19202D),
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 36.w,
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xFF5474FD),
                  padding: EdgeInsets.fromLTRB(29.w, 13.h, 29.w, 15.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                ),
                child: Text(
                  'Following',
                  style: TextStyle(
                      fontFamily: 'Gellix',
                      fontWeight: FontWeight.w500,
                      fontSize: 12.sp,
                      color: Colors.white),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            'Every piece of chocolate I ever ate is getting back \nat me.. desserts are very revengeful..',
            style: TextStyle(
              fontFamily: 'Gellix',
              color: const Color(0xFF9397A0),
              fontWeight: FontWeight.w500,
              fontSize: 12.sp,
            ),
          ),
          SizedBox(
            height: 33.h,
          ),
          const StatsContainer(),
          SizedBox(
            height: 30.h,
          ),
          Row(
            children: [
              Text(
                "Elly's Post",
                style: TextStyle(
                  fontFamily: 'Gellix',
                  fontSize: 17.sp,
                  color: const Color(0xFF19202D),
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: 197.w,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "View All",
                  style: TextStyle(
                      color: const Color(0xFF5474FD),
                      fontSize: 12.sp,
                      fontFamily: 'Gellix',
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
          SizedBox(
            height: 19.h,
          ),
          Column(
            children: [
              PostsWidget(
                image: Image.asset(
                  'assets/images/iran_protest.png',
                ),
                subject: 'New: Politics',
                title:
                    "Iran's raging protests\nFifth Iranian paramilitary me...",
                date: '16th May',
                time: '09 : 32 pm',
              ),
              SizedBox(
                height: 15.h,
              ),
              PostsWidget(
                image: Image.asset(
                  'assets/images/moscow_castle.png',
                ),
                subject: 'New: Science',
                title: "Putin to host ceremony\nannexing occupied Ukrainia...",
                date: '11th May',
                time: '10 : 15 am',
              ),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(
            'Popular From Elly',
            style: TextStyle(
              fontFamily: 'Gellix',
              fontWeight: FontWeight.w700,
              fontSize: 17.sp,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(right: 15.w),
                child: popularPhotos[index],
              ),
              itemCount: popularPhotos.length,
            ),
          ),
        ],
      ),
    );
  }
}
