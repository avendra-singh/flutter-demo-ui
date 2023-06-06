import 'package:flutter/material.dart';
import 'package:flutter_ui/ui_three/widgets/categories_card.dart';
import 'package:flutter_ui/ui_three/widgets/top_doctor_tile.dart';

class TopDoctorCard extends StatefulWidget {
  @override
  _TopDoctorCardState createState() => _TopDoctorCardState();
}

class _TopDoctorCardState extends State<TopDoctorCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Top Doctors",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              "See All",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ],
        ),
        Column(
          children: [
            TopDoctorTile(),
            TopDoctorTile(),
          ],
        ),
      ],
    );
  }
}
