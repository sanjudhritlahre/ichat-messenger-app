import 'package:flutter/material.dart';

class BottomTagLine extends StatelessWidget {
  const BottomTagLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      child: const Text(
        "from Orisis",
        style: TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.bold,
          color: Colors.deepPurpleAccent,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
