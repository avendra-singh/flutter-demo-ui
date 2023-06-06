import 'package:flutter/material.dart';
import 'package:flutter_ui/utils/colors.dart';

class SearchCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 24),
      child: Card(
        elevation: 2,
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey.withOpacity(0.3),
                        radius: 32,
                        child: Icon(
                          Icons.person,
                          color: AppColor.uiOneThemeColor,
                        ),
                      ),
                    )),
                Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Lorem ipsum",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec posuere leo.",
                          style: TextStyle(color: Colors.grey, wordSpacing: 6),
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
                                          color: AppColor.uiOneThemeColor!
                                              .withOpacity(0.5),
                                          size: 20,
                                        ))
                                    .toList()),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "4.9",
                              style: TextStyle(color: Colors.grey.shade900),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "90.0\$/PH",
                              style: TextStyle(color: Colors.grey.shade900),
                            ),
                          ],
                        )
                      ],
                    ))
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      elevation: 0,
                      color: Color.fromRGBO(250, 239, 217, 1),
                      onPressed: () {},
                      child: Text("PROFILE"),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      elevation: 0,
                      color: AppColor.uiOneThemeColor,
                      onPressed: () {},
                      child: Text(
                        "HIRE",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
