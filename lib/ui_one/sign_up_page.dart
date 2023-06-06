import 'package:flutter/material.dart';
import 'package:flutter_ui/ui_one/lookup_page.dart';
import 'package:flutter_ui/ui_one/search_page.dart';
import 'package:flutter_ui/utils/colors.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  PageController _myPage = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();

    _myPage.addListener(() {
      setState(() {
        _currentPage = _myPage.page!.toInt();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _myPage,
        physics: NeverScrollableScrollPhysics(),
        children: [
          LookUpPage(),
          SearchPage(),
          Center(
            child: Text('Empty Body 2'),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 75,
          color: AppColor.uiOneThemeColor,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                iconSize: 30.0,
                icon: Icon(
                  Icons.person,
                  color:
                      _currentPage == 0 ? Colors.white : Colors.grey.shade300,
                ),
                onPressed: () {
                  setState(() {
                    _myPage.jumpToPage(0);
                    _currentPage = 0;
                  });
                },
              ),
              IconButton(
                iconSize: 30.0,
                icon: Icon(
                  Icons.search,
                  color:
                      _currentPage == 1 ? Colors.white : Colors.grey.shade300,
                ),
                onPressed: () {
                  setState(() {
                    _myPage.jumpToPage(1);
                    _currentPage = 1;
                  });
                },
              ),
              IconButton(
                iconSize: 30.0,
                icon: Icon(
                  Icons.person_add_alt_1,
                  color:
                      _currentPage == 2 ? Colors.white : Colors.grey.shade300,
                ),
                onPressed: () {
                  setState(() {
                    _myPage.jumpToPage(2);
                    _currentPage = 2;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
