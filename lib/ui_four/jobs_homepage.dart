import 'package:flutter/material.dart';

class JobsHomepage extends StatefulWidget {
  @override
  _JobsHomepageState createState() => _JobsHomepageState();
}

class _JobsHomepageState extends State<JobsHomepage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Icon(Icons.sort),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.align_vertical_bottom),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: width,
          color: Colors.grey.shade300,
          padding: const EdgeInsets.all(12.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Developer",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: Colors.black, fontWeight: FontWeight.w700),
            ),
            Text(
              "Jobs",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: Colors.black, fontWeight: FontWeight.w700),
            ),
            Wrap(
              children:
                  ["Developer", "San Francisco", "\$10 - 50h", "part-Time"]
                      .map((e) => Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Chip(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                )),
                                backgroundColor: Colors.white,
                                label: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(e),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Icon(Icons.close)
                                  ],
                                )),
                          ))
                      .toList(),
            ),
            SizedBox(
              height: 4,
            ),
            Text("Recommended for you",
                style: Theme.of(context).textTheme.titleLarge),
            SizedBox(
              height: 4,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [1, 2].map((e) => RecommendedCard()).toList(),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text("Recentally added",
                style: Theme.of(context).textTheme.titleLarge),
            SizedBox(
              height: 4,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [1, 2].map((e) => RecentlyAddedCard()).toList(),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class RecommendedCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        height: 160,
        width: 160,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    'assets/images/background.jpg',
                    height: 30,
                  ),
                ),
                Chip(
                    backgroundColor: Colors.grey.shade300,
                    label: Text("Full-Time"))
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Flutter UI/UX",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    "\$40/h",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RecentlyAddedCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        height: 80,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset(
                      'assets/images/background.jpg',
                      height: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Flutter Developer",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          "Amazon Inc",
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                "\$40/h",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
