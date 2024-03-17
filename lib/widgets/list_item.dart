import 'package:flutter/material.dart';
import 'package:paint_an_app/models/item_model.dart';

class ListItem extends StatelessWidget {
  const ListItem(this.locationDetails, {super.key});

  final ListModel locationDetails;

  @override
  Widget build(context) {
    return SizedBox(
      width: 255,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              locationDetails.locationImage,
              const SizedBox(
                height: 18,
              ),
              Text(
                locationDetails.locationDescription,
                style: const TextStyle(
                    fontFamily: 'Gellix',
                    fontWeight: FontWeight.w600,
                    fontSize: 15),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  locationDetails.userImage,
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        locationDetails.userName,
                        style: const TextStyle(
                          fontFamily: 'Gellix',
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        locationDetails.date,
                        style: const TextStyle(
                          fontFamily: 'Gellix',
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/icons/Grouparrow.png'),
                    style: IconButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      backgroundColor: const Color(0xFFEFF5F4),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
