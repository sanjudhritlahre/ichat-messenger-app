import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AppLanguages extends StatelessWidget {
  const AppLanguages({
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
          color: Colors.orangeAccent,
        ),
        child: const Icon(
          CupertinoIcons.globe,
          color: Colors.white,
          size: 30.0,
        ),
      ),
      title: const Text(
        "App Language",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
        ),
      ),
      subtitle: const Text(
        "English (System Default) Try Another Languages",
        style: TextStyle(
          color: Colors.blueGrey,
          fontWeight: FontWeight.bold,
          wordSpacing: 1.5,
          fontSize: 13.0,
        ),
      ),
      trailing: const Icon(
        CupertinoIcons.chevron_right_circle_fill,
        color: Colors.orangeAccent,
      ),
    );
  }
}
