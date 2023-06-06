import 'package:flutter/material.dart';

class YourApplicationPage extends StatefulWidget {
  const YourApplicationPage({super.key});

  @override
  _YourApplicationPageState createState() => _YourApplicationPageState();
}

class _YourApplicationPageState extends State<YourApplicationPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        width: width,
        color: Colors.grey.shade300,
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: Colors.black, fontWeight: FontWeight.w700),
            ),
            Text(
              "Applications(5)",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: Colors.black, fontWeight: FontWeight.w700),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                    children: [1, 2, 3, 4, 5, 6]
                        .map((e) => YourApplicatioCard())
                        .toList()),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class YourApplicatioCard extends StatelessWidget {
  const YourApplicatioCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 9,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset(
                        'assets/images/background.jpg',
                        height: 50,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Flutter Developer",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Text(
                            "Amazon Inc",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(child: Icon(Icons.more_vert))
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                minWidth: 140,
                height: 48,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                elevation: 0,
                color: Colors.grey.shade300,
                onPressed: () {},
                child: Text(
                  "Delivered",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                "\$40/h",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.w600),
              ),
            ],
          )
        ],
      ),
    );
  }
}
