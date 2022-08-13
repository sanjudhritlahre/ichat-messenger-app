import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ichat/screens/home_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/search_screen.dart';
import '../screens/story_screen.dart';
import '../screens/upload_screen.dart';

class HomeNavigationBar extends StatefulWidget {
  const HomeNavigationBar({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeNavigationBarState createState() => _HomeNavigationBarState();
}

class _HomeNavigationBarState extends State<HomeNavigationBar> {
  final items = <Widget>[
    const Icon(
      Icons.wechat_rounded,
      size: 25,
    ),
    const Icon(
      Icons.auto_mode,
      size: 25,
    ),
    const Icon(
      Icons.add_circle_rounded,
      size: 25,
    ),
    const Icon(
      Icons.video_call_rounded,
      size: 25,
    ),
    const Icon(
      Icons.account_circle_rounded,
      size: 25,
    )
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        child: CurvedNavigationBar(
          height: 60.0,
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: const Color.fromARGB(255, 255, 1, 107),
          color: Colors.deepPurpleAccent,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 300),
          items: items,
          index: selectedIndex,
          onTap: (selctedIndex) {
            setState(() {
              selectedIndex = selctedIndex;
            });
          },
        ),
      ),
      body: Container(child: getSelectedWidget(index: selectedIndex)),
    );
  }

  Widget getSelectedWidget({required int index}) {
    Widget widget;
    switch (index) {
      case 0:
        widget = const HomeScreen();
        break;
      case 1:
        widget = const SearchPage();
        break;
      case 2:
        widget = const UploadPage();
        break;
      case 3:
        widget = const StoryPage();
        break;
      default:
        widget = const ProfilePage();
        break;
    }
    return widget;
  }
}
