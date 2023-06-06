import 'package:flutter/material.dart';
import 'package:flutter_ui/ui_four/jobs_homepage.dart';
import 'package:flutter_ui/ui_four/your_application_page.dart';

class DeveloperJobsHomePage extends StatelessWidget {
  const DeveloperJobsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          bottomNavigationBar: menu(),
          body: TabBarView(
            children: [
              JobsHomepage(),
              const YourApplicationPage(),
            ],
          ),
        ),
      ),
    );
  }

  Widget menu() {
    return Container(
      height: 64,
      child: TabBar(
        labelColor: Colors.black,
        unselectedLabelColor: Colors.grey,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: Colors.black,
        tabs: [
          Tab(
            text: "Jobs",
          ),
          Tab(
            text: "Applications",
          ),
        ],
      ),
    );
  }
}
