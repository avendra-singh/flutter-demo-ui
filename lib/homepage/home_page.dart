import 'package:flutter/material.dart';
import 'package:flutter_ui/homepage/widgets/milestone_tile.dart';
import 'package:flutter_ui/ui_four/developer_jobs_homepage.dart';
import 'package:flutter_ui/ui_one/sign_up_page.dart';
import 'package:flutter_ui/ui_three/health_app_start_page.dart';
import 'package:flutter_ui/ui_two/conversation_app.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => SignUpPage()));
              },
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: MileStoneTile("UI One"),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => ConversationApp()));
              },
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: MileStoneTile("UI Two"),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => HealthAppStartPage()));
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
                child: MileStoneTile("UI Three"),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => DeveloperJobsHomePage()));
              },
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: MileStoneTile("UI Four"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
