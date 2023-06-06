import 'package:flutter/material.dart';
import 'package:flutter_ui/ui_three/book_appointment_page.dart';

import 'widgets/categories_card_list.dart';
import 'widgets/top_doctor_card.dart';

class HealthAppHomePage extends StatefulWidget {
  @override
  _HealthAppHomePageState createState() => _HealthAppHomePageState();
}

class _HealthAppHomePageState extends State<HealthAppHomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Icon(Icons.menu),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello",
                        style: TextStyle(
                          fontSize: 42,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Cybdom",
                        style: TextStyle(
                            fontSize: 42,
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  Icon(Icons.timeline)
                ],
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    hintText: 'Search...',
                    prefixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () => () {},
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              Container(
                width: width,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/background.jpg'),
                      fit: BoxFit.cover,
                      opacity: 0.4),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50, right: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Do You Have symptoms of Covid-19?",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22.0)),
                          elevation: 0,
                          color: Colors.blue,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) =>
                                        const BookAppointmentPage()));
                          },
                          child: Text(
                            "Contact A Doctor",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              CategoriesCardList(),
              SizedBox(
                height: 8,
              ),
              TopDoctorCard()
            ],
          ),
        ),
      ),
    );
  }
}
