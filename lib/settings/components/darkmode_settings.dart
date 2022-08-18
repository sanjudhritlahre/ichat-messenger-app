import 'package:flutter/material.dart';
import '../widgets/darkmode_widgets.dart';

class DarkModeSettings extends StatelessWidget {
  const DarkModeSettings({
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
    return Center(
      child: GestureDetector(
        onTap: () => ThemeModalBottomSheet(context),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                margin: const EdgeInsets.only(left: 20.0),
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: const Icon(
                  Icons.dark_mode_rounded,
                  size: 30.0,
                  color: Colors.white,
                )),
            Container(
              margin: const EdgeInsets.only(left: 20.0),
              child: const Text(
                "Dark Mode",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 180.0),
              child: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
