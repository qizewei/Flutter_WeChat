import 'package:flutter/material.dart';
import './message_data.dart';
import './message_item.dart';

class MessagePage extends StatefulWidget {
  @override
  MessagePageState createState() => new MessagePageState();
}

class MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: ListView.builder(
          itemCount: messageData.length,
          itemBuilder: (BuildContext context, int index) {
            return new MessageItem(messageData[index]);
          }),
    );
  }
}
