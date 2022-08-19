import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeActions extends StatelessWidget {
  const HomeActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(
            CupertinoIcons.sun_max_fill,
            size: 25.0,
            color: Colors.yellow,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            CupertinoIcons.search_circle_fill,
            size: 30.0,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            CupertinoIcons.line_horizontal_3_decrease_circle_fill,
            size: 30.0,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
