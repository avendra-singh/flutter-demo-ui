import 'package:flutter/material.dart';
import 'package:flutter_ui/utils/colors.dart';

class SearchBar extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();

  SearchBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.uiOneThemeColor,
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: _searchController,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'Search...',
          suffixIcon: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.segment),
                  onPressed: () => _searchController.clear(),
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () => _searchController.clear(),
                ),
                IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: () => _searchController.clear(),
                ),
              ],
            ),
          ),
          prefixIcon: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => _searchController.clear(),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
    );
  }
}
