import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatSettings extends StatelessWidget {
  const ChatSettings({
    Key? key,
  }) : super(key: key);

@override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.deepPurpleAccent,
        ),
        child: const Icon(
          CupertinoIcons.bubble_left_bubble_right_fill,
          color: Colors.white,
          size: 30.0,
        ),
      ),
      title: const Text(
        "Chats",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
        ),
      ),
      subtitle: const Text(
        "History, Backup, Media Visibility, more...",
        style: TextStyle(
          color: Colors.blueGrey,
          fontWeight: FontWeight.bold,
          wordSpacing: 1.5,
          fontSize: 13.0,
        ),
      ),
      trailing: const Icon(
        CupertinoIcons.chevron_right_circle_fill,
        color: Colors.deepPurpleAccent,
      ),
    );
  }
}
