import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paint_an_app/models/short_item_model.dart';

class ShortItem extends StatelessWidget {
  const ShortItem({required this.shorts, super.key});

  final ShortItemModel shorts;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 20.w,
        bottom: 24.h,
      ),
      height: 88.h,
      width: 208.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.r),
        boxShadow: [
          BoxShadow(
            color: const Color(0x19202D0D),
            spreadRadius: 0,
            blurRadius: 24.r,
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(9.dg),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            shorts.displayImage,
            const SizedBox(
              width: 13,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  shorts.title,
                  style: const TextStyle(
                      fontFamily: "Gellix",
                      fontSize: 13,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 9,
                ),
                Image.asset('assets/images/Group.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
