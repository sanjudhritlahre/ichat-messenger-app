import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/darkmode_widgets.dart';

class ThemeModeSettings extends StatelessWidget {
  const ThemeModeSettings({
    Key? key,
  }) : super(key: key);


// ignore: non_constant_identifier_names
  void ThemeModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        top: Radius.circular(30),
      )),
      builder: (context) => DraggableScrollableSheet(
          initialChildSize: 0.4,
          maxChildSize: 0.9,
          minChildSize: 0.32,
          expand: false,
          builder: (context, scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
              child: const DarkModeDraggableScrollableSheet(),
            );
          }),
    );
  }
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => ThemeModalBottomSheet(context),
      child: ListTile(
        leading: Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.lightBlueAccent,
          ),
          child: const Icon(
            CupertinoIcons.paintbrush_fill,
            color: Colors.white,
            size: 30.0,
          ),
        ),
        title: const Text(
          "Theme Mode",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
        subtitle: const Text(
          "Dark, Light, System",
          style: TextStyle(
            color: Colors.blueGrey,
            fontWeight: FontWeight.bold,
            wordSpacing: 1.5,
            fontSize: 13.0,
          ),
        ),
        trailing: const Icon(
          CupertinoIcons.chevron_right_circle_fill,
          color: Colors.lightBlueAccent,
        ),
      ),
    );
  }
}
