import 'package:flutter/material.dart';
import 'package:flutter_ui/ui_one/widget/search_bar.dart';
import 'package:flutter_ui/ui_one/widget/search_card.dart';
import 'package:flutter_ui/utils/colors.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.uiOneThemeColor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Column(
          children: const [Text("Search Result")],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchBar(),
            Column(
              children: ["1", "2", "3", "4"]
                  .map(
                    (e) => SearchCard(),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
