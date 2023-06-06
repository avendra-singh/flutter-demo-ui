import 'package:flutter/material.dart';
import 'package:flutter_ui/ui_one/widget/look_up_page_card.dart';
import 'package:flutter_ui/utils/colors.dart';

class LookUpPage extends StatefulWidget {
  const LookUpPage({super.key});

  @override
  _LookUpPageState createState() => _LookUpPageState();
}

class _LookUpPageState extends State<LookUpPage> {
  String isSelected = "one";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: AppBar(
          toolbarHeight: 100.0,
          backgroundColor: AppColor.uiOneThemeColor,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text("Sign Up"),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.more_vert_outlined),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 24.0),
          child: Column(
            children: [
              GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelected = "one";
                    });
                  },
                  child: LookUpPageTile(
                      "I'm looking for a teacher", isSelected == "one")),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelected = "two";
                    });
                  },
                  child: LookUpPageTile(
                      "I'm looking  a teacher", isSelected == "two")),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelected = "three";
                    });
                  },
                  child: LookUpPageTile(
                      "I'm looking for a teacher", isSelected == "three")),
            ],
          ),
        ),
      ),
    );
  }
}
