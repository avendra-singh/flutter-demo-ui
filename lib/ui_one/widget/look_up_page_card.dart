import 'package:flutter/material.dart';
import 'package:flutter_ui/utils/colors.dart';

class LookUpPageTile extends StatelessWidget {
  final String title;
  final bool isSelected;
  const LookUpPageTile(this.title, this.isSelected, {super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 20),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 3,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
            color: isSelected ? AppColor.uiOneThemeColor! : null,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 32),
          width: width,
          height: 140,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: isSelected ? Colors.white : Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
