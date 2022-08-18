import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class NotifictionSoundeSettings extends StatelessWidget {
  const NotifictionSoundeSettings({
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
          color: Colors.redAccent,
        ),
        child: const Icon(
          CupertinoIcons.app_badge_fill,
          color: Colors.white,
          size: 30.0,
        ),
      ),
      title: const Text(
        "Notifications & Sounds",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
        ),
      ),
      subtitle: const Text(
        "Messages, Groups, Calls, Conversation more...",
        style: TextStyle(
          color: Colors.blueGrey,
          fontWeight: FontWeight.bold,
          wordSpacing: 1.5,
          fontSize: 13.0,
        ),
      ),
      trailing: const Icon(
        CupertinoIcons.chevron_right_circle_fill,
        color: Colors.redAccent,
      ),
    );
  }
}
