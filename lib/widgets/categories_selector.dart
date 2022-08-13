import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  const CategorySelector({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  final List<String> categories = [
    'Messages',
    'Online',
    'Groups',
    'Video Call',
    'Requests'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: Theme.of(context).primaryColorLight,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 30.0,
              ),
              child: Container(
                padding: const EdgeInsets.all(0.08),
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color:
                      index == selectedIndex ? Colors.pinkAccent : Colors.white,
                ),
                child: Center(
                  child: Text(
                    categories[index],
                    style: TextStyle(
                      color:
                          index == selectedIndex ? Colors.white : Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
