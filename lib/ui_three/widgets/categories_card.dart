import 'package:flutter/material.dart';

class CategoriesCard extends StatefulWidget {
  MaterialColor color;
  String title;
  CategoriesCard(this.color, this.title);

  @override
  _CategoriesCardState createState() => _CategoriesCardState();
}

class _CategoriesCardState extends State<CategoriesCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: widget.color,
            ),
            height: 80,
            width: 80,
          ),
          Container(
            width: 100,
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.title),
          )
        ],
      ),
    );
  }
}
