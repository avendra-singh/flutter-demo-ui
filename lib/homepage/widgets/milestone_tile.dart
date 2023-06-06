import 'package:flutter/material.dart';
import 'package:flutter_ui/utils/colors.dart';

class MileStoneTile extends StatelessWidget {
  final String title;
  const MileStoneTile(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Card(
      child: Container(
        color: AppColor.themeColor.withOpacity(0.1),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 32),
        width: width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
            )
          ],
        ),
      ),
    );
  }
}
