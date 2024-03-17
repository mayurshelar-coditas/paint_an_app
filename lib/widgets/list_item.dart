import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paint_an_app/models/item_model.dart';

class ListItem extends StatelessWidget {
  const ListItem(this.locationDetails, {super.key});

  final ListModel locationDetails;

  @override
  Widget build(context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        children: [
          locationDetails.locationImage,
          SizedBox(
            height: 18.h,
          ),
          Text(
            locationDetails.locationDescription,
            style: TextStyle(
                fontFamily: 'Gellix',
                fontWeight: FontWeight.w600,
                fontSize: 15.sp),
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              locationDetails.userImage,
              SizedBox(
                width: 12.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    locationDetails.userName,
                    style: TextStyle(
                      fontFamily: 'Gellix',
                      fontWeight: FontWeight.w600,
                      fontSize: 12.sp,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    locationDetails.date,
                    style: TextStyle(
                      fontFamily: 'Gellix',
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 61.w,
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset('assets/icons/Grouparrow.png'),
                style: IconButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  backgroundColor: const Color(0xFFEFF5F4),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
