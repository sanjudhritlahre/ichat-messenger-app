import 'package:flutter/material.dart';

class DarkModeDraggableScrollableSheet extends StatelessWidget {
  const DarkModeDraggableScrollableSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: -15,
          child: Container(
            width: 60,
            height: 7,
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Image.asset(
            "assets/images/sunny.png",
            fit: BoxFit.cover,
            width: 80,
            height: 80,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 125.0),
          child: Column(
            children: [
              ListTile(
                leading: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: const Icon(
                    Icons.light_mode_rounded,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  'Light Mode',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text("Off"),
                trailing: const Icon(
                  Icons.toggle_off_outlined,
                  size: 30.0,
                ),
              ),
              ListTile(
                leading: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.black),
                  child: const Icon(
                    Icons.dark_mode_rounded,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  'Dark Mode',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text("Off"),
                trailing: const Icon(
                  Icons.toggle_off_outlined,
                  size: 30.0,
                ),
              ),
              ListTile(
                leading: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: const Icon(
                    Icons.settings_suggest_rounded,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  'System Mode Default',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text("Off"),
                trailing: const Icon(
                  Icons.toggle_off_outlined,
                  size: 30.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
