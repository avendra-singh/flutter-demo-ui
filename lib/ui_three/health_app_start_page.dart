import 'package:flutter/material.dart';
import 'package:flutter_ui/ui_three/home_page.dart';

class HealthAppStartPage extends StatefulWidget {
  @override
  _HealthAppStartPageState createState() => _HealthAppStartPageState();
}

class _HealthAppStartPageState extends State<HealthAppStartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "skip",
                style: TextStyle(fontSize: 14),
              ),
            ],
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/health_app.jpg",
              height: 200,
            ),
            Text(
              "Call a doctor to visit you",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec posuere leo.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, wordSpacing: 4),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22.0)),
                color: Colors.blue,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => HealthAppHomePage()));
                },
                child: Text(
                  "Next",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 16),
                )),
          )),
    );
  }
}
