import 'package:flutter/material.dart';
import 'package:paint_an_app/models/short_item_model.dart';

class ShortItem extends StatelessWidget {
  const ShortItem({required this.shorts, super.key});

  final ShortItemModel shorts;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 208,
      child: Card(
        color: Colors.white,
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
