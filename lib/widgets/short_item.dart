import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paint_an_app/models/short_item_model.dart';

class ShortItem extends StatelessWidget {
  const ShortItem({required this.shorts, super.key});

  final ShortItemModel shorts;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0.2,
      child: Padding(
        padding: const EdgeInsets.all(9),
        child: Row(
          children: [
            shorts.displayImage,
            SizedBox(
              width: 12.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  shorts.title,
                  style: TextStyle(
                      fontFamily: 'Gellix',
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 9.h,
                ),
                Image.asset('assets/images/Group.png'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
