import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:paint_an_app/models/item_model.dart';
import 'package:paint_an_app/models/short_item_model.dart';
import 'package:paint_an_app/widgets/list_item.dart';
import 'package:paint_an_app/widgets/short_item.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<ListModel> locationDetails = [
    ListModel(
        locationImage: Image.asset(
          'assets/images/Vectormaldives.png',
        ),
        userImage: Image.asset(
          'assets/images/Vectoruserimage.png',
        ),
        userName: 'Sang Dong-Min',
        date: "Sep 9, 2022",
        locationDescription:
            "Feel the thrill on the only\nsurf simulator in Maldives 2022"),
    ListModel(
        locationImage: Image.asset(
          'assets/images/Vectormaldives.png',
        ),
        userImage: Image.asset('assets/images/Vectoruser2.png'),
        userName: 'Pan Bong',
        date: "Jan 3, 2022",
        locationDescription:
            "Hong Kong wins over Wall \nStreet CEOs after lifting strict"),
  ];

  final List<ShortItemModel> shorts = [
    ShortItemModel(
      displayImage: Image.asset('assets/images/VectortopTrending1.png'),
      title: "Top Trending\nIslands in 2022",
    ),
    ShortItemModel(
      displayImage: Image.asset('assets/images/VectortopTrending2.png'),
      title: "China Economic\nTrading",
    )
  ];

  @override
  Widget build(BuildContext context) {
    DateTime today = DateTime.now();
    String presentDate = DateFormat('EEEE, d MMMM').format(today);

    return Padding(
      padding: EdgeInsets.only(left: 30.w, top: 51.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset('assets/images/VectorprofileImage.png',
                  height: 49.h, width: 49.w),
              //Replace at the end with something of good practice.
              SizedBox(width: 16.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome Back!',
                    style: TextStyle(
                        fontFamily: 'Gellix',
                        fontWeight: FontWeight.w700,
                        fontSize: 16.sp),
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  Text(
                    presentDate,
                    style: TextStyle(
                        fontFamily: 'Gellix',
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 32.h,
          ),
          Container(
            height: 49.h,
            width: 315.w,
            decoration: BoxDecoration(
              color: const Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search for article...',
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/icons/searchButton.png'),
                  style: IconButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    backgroundColor: const Color(0xFF5474FD),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            children: [
              Text(
                "#Health",
                style: TextStyle(
                  fontFamily: 'Gellix',
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                ),
              ),
              SizedBox(width: 36.w),
              Text(
                "#Music",
                style: TextStyle(
                  fontFamily: 'Gellix',
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                ),
              ),
              SizedBox(width: 37.w),
              Text(
                "#Technology",
                style: TextStyle(
                  fontFamily: 'Gellix',
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                ),
              ),
              SizedBox(width: 38.sp),
              Text(
                "#Sports",
                style: TextStyle(
                  fontFamily: 'Gellix',
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
          SizedBox(height: 30.h),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => ListItem(
                locationDetails[index],
              ),
              itemCount: locationDetails.length,
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            children: [
              Text(
                "Shorts For You",
                style: TextStyle(
                    fontFamily: 'Gellix',
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(width: 138.w),
              TextButton(
                onPressed: () {},
                child: Text(
                  "View All",
                  style: TextStyle(
                    color: const Color(0xFF5474FD),
                    fontSize: 12.sp,
                    fontFamily: 'Gellix',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 19.h,
          ),
          SizedBox(
            height: 88.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => ShortItem(shorts: shorts[index]),
              itemCount: shorts.length,
            ),
          ),
        ],
      ),
    );
  }
}
