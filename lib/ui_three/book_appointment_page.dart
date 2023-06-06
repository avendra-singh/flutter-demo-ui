import 'package:flutter/material.dart';

class BookAppointmentPage extends StatefulWidget {
  const BookAppointmentPage({super.key});

  @override
  _BookAppointmentPageState createState() => _BookAppointmentPageState();
}

class _BookAppointmentPageState extends State<BookAppointmentPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: width,
                  height: 280,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/background.jpg'),
                        fit: BoxFit.cover,
                        opacity: 1),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      width: width,
                      height: 270,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      width: width,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Dr Cybdom Tech",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall,
                                    ),
                                    Text("General Practitioner",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall!
                                            .copyWith(color: Colors.grey)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Colors.orange,
                                      ),
                                      height: 52,
                                      width: 52,
                                      child: Icon(
                                        Icons.email,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Colors.green,
                                      ),
                                      height: 52,
                                      width: 52,
                                      child: Icon(
                                        Icons.email,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [1, 2, 3, 4, 5]
                                      .map((e) => Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ))
                                      .toList(),
                                ),
                                Text("(1320 Reviews)"),
                                SizedBox(
                                  width: 16,
                                ),
                                Text(
                                  "See all reviews",
                                  style: TextStyle(color: Colors.blue),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "About",
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Incidunt placeat eos magni quas quam i dignissimos",
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text("See More",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(color: Colors.blue)),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Working Hours",
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Mon - Fri 09:00 - 17:00",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium,
                                    ),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Chip(
                                        backgroundColor: Colors.green.shade100,
                                        label: Text(
                                          "Open",
                                          style: TextStyle(color: Colors.green),
                                        ))
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Stats",
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    StatsCard("385", "Patients"),
                                    StatsCard("15 Years", "Experience"),
                                    StatsCard("10", "Certifications")
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: MaterialButton(
                                  minWidth: width,
                                  height: 44,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(22.0)),
                                  color: Colors.blue,
                                  onPressed: () {},
                                  child: Text(
                                    "Make An Appointment",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 16),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class StatsCard extends StatelessWidget {
  String data;
  String lable;
  StatsCard(this.data, this.lable);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          data,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Text(
          lable,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
