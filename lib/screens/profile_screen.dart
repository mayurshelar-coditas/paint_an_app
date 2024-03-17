import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paint_an_app/widgets/posts_widget.dart';
import 'package:paint_an_app/widgets/stats_container.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final List<Image> popularPhotos = [
    Image.asset('assets/images/popular_post1.png'),
    Image.asset('assets/images/popular_post2.png'),
  ];

  @override
  Widget build(BuildContext context) {
    //Using safe area as our screen does not have appBar.
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 30.w),
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
                      fontWeight: FontWeight.w700),
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
                PostsWidget(
                  image: Image.asset(
                    'assets/images/moscow_castle.png',
                    height: 90,
                    width: 90,
                  ),
                  subject: 'New: Science',
                  title:
                      "Putin to host ceremony\nannexing occupied Ukrainia...",
                  date: '11th May',
                  time: '10 : 15 am',
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30, bottom: 20),
              child: Text(
                'Popular From Elly',
                style: TextStyle(
                  fontFamily: 'Gellix',
                  fontWeight: FontWeight.w700,
                  fontSize: 17,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(
                    bottom: 15,
                    right: 18,
                  ),
                  child: SizedBox(
                    height: 143,
                    width: 248,
                    child: popularPhotos[index],
                  ),
                ),
                itemCount: popularPhotos.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
