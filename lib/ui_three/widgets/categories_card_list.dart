import 'package:flutter/material.dart';
import 'package:flutter_ui/ui_three/widgets/categories_card.dart';

class CategoriesCardList extends StatefulWidget {
  @override
  _CategoriesCardListState createState() => _CategoriesCardListState();
}

class _CategoriesCardListState extends State<CategoriesCardList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Categories",
          style: TextStyle(
              fontSize: 24, color: Colors.grey, fontWeight: FontWeight.w400),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CategoriesCard(Colors.red, "General Practitoner"),
              CategoriesCard(Colors.orange, "Dental Surgery"),
            ],
          ),
        ),
      ],
    );
  }
}
