import 'package:flutter/material.dart';

class AppTitleName extends StatelessWidget {
  const AppTitleName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.wechat_rounded,
          size: 30.0,
        ),
        SizedBox(
          width: 20.0,
        ),
        Text(
          "iChats",
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
