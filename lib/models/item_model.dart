import 'package:flutter/material.dart';

class ListModel {
  const ListModel(
      {required this.locationImage,
      required this.date,
      required this.locationDescription,
      required this.userImage,
      required this.userName});

  final Image locationImage, userImage;
  final String locationDescription, date, userName;
}
