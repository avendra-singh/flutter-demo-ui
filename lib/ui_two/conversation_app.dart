import 'package:flutter/material.dart';
import 'package:flutter_ui/data/fake_data_source.dart';
import 'package:flutter_ui/data/models/convo_model.dart';

class ConversationApp extends StatefulWidget {
  @override
  _ConversationAppState createState() => _ConversationAppState();
}

class _ConversationAppState extends State<ConversationApp> {
  List<ConvoModel> convoData = FakeDataSource.convoData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Conversations",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w600),
            ),
            TextButton(
                onPressed: () {},
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.pink.shade50,
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  padding: EdgeInsets.all(4),
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.pink,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Add New  ",
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
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
          Expanded(
            child: ListView.builder(
                itemCount: convoData.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                      contentPadding: const EdgeInsets.all(12),
                      leading: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.pink.shade50,
                        child: Icon(
                          Icons.person,
                        ),
                      ),
                      trailing: Text(
                        convoData[index].time.toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      title: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            convoData[index].name.toString(),
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            convoData[index].message.toString(),
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ));
                }),
          ),
        ],
      ),
    );
  }
}
