import 'package:flutter/material.dart';

class TopDoctorTile extends StatefulWidget {
  @override
  _TopDoctorTileState createState() => _TopDoctorTileState();
}

class _TopDoctorTileState extends State<TopDoctorTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blue,
                    ),
                    height: 60,
                    width: 60,
                    child: Icon(
                      Icons.person,
                      size: 42,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(" Dr Cybdom Tech"),
                      Text(
                        " General Practitoner",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Row(
                          children: [1, 2, 3, 4, 5]
                              .map((e) => Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ))
                              .toList())
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Icon(Icons.book),
                  Chip(
                      backgroundColor: Colors.green.shade100,
                      label: Text(
                        "Open",
                        style: TextStyle(color: Colors.green),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
