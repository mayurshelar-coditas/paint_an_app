import 'package:flutter/material.dart';
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
          height: 164,
          width: 231,
        ),
        userImage: Image.asset('assets/images/Vectoruserimage.png'),
        userName: 'Sang Dong-Min',
        date: "Sep 9, 2022",
        locationDescription:
            "Feel the thrill on the only \nsurf simulator in Maldives 2022"),
    ListModel(
        locationImage: Image.asset(
          'assets/images/VectorbridgeImage.png',
          height: 70,
          width: 70,
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
      title: "China Trading",
    )
  ];

  @override
  Widget build(BuildContext context) {
    EdgeInsets padding = MediaQuery.of(context).padding;

    DateTime today = DateTime.now();
    String presentDate = DateFormat('EEEE, d MMMM').format(today);

    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 31, top: 56),
            child: Row(
              children: [
                Image.asset('assets/images/VectorprofileImage.png',
                    height: 49, width: 49),
                //Replace at the end with something of good practice.
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Welcome Back!',
                      style: TextStyle(
                          fontFamily: 'Gellix',
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      presentDate,
                      style: const TextStyle(
                          fontFamily: 'Gellix',
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 32, 30, 15),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search for article...',
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/icons/searchButton.png'),
                  style: IconButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: Color(
                      int.parse('0xFF5474FD'),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Row(
              children: [
                Text(
                  "#Health",
                  style: TextStyle(
                    fontFamily: 'Gellix',
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
                SizedBox(width: 36),
                Text(
                  "#Music",
                  style: TextStyle(
                    fontFamily: 'Gellix',
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
                SizedBox(width: 37),
                Text(
                  "#Technology",
                  style: TextStyle(
                    fontFamily: 'Gellix',
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
                SizedBox(width: 38),
                Text(
                  "#Sports",
                  style: TextStyle(
                    fontFamily: 'Gellix',
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 320,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => ListItem(
                  locationDetails[index],
                ),
                itemCount: locationDetails.length,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, bottom: 19, right: 30),
            child: Row(
              children: [
                const Text(
                  "Shorts For You",
                  style: TextStyle(
                      fontFamily: 'Gellix',
                      fontSize: 17,
                      fontWeight: FontWeight.w700),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "View All",
                    style: TextStyle(
                        color: Color(0xFF5474FD),
                        fontSize: 12,
                        fontFamily: 'Gellix',
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 90,
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
