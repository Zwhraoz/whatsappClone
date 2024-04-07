import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat.dart';

class ChatScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Container( // Wrap with Container
      color: Color.fromARGB(255, 255, 255,255), // Set background color to blue
      child: ListView.builder(
        itemCount: fakeData.length,
        itemBuilder: (context, i) => Column(
          children: <Widget>[
            Divider(
              height: 10.0,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(fakeData[i].avatarUrl),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    fakeData[i].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    fakeData[i].time,
                    style: TextStyle(fontSize: 14.0, color: const Color.fromARGB(255, 0, 0, 0)),
                  ),
                ],
              ),
              subtitle: Container(
                padding: EdgeInsets.only(top: 5.0),
                child: Text(
                  fakeData[i].message,
                  style: TextStyle(color: Color.fromARGB(255, 78, 75, 75), fontSize: 15.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
