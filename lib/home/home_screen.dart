import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ichat/widgets/recent_chats.dart';
import 'calls_screen.dart';
import 'components/app_title_name.dart';
import 'components/home_actions.dart';
import 'group_screen.dart';
import 'story_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        initialIndex: 0,
        child: Scaffold(
          extendBody: true,
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.deepPurpleAccent,
            bottom: TabBar(
                indicatorPadding: const EdgeInsets.symmetric(horizontal: 20.0),
                indicatorColor: Colors.redAccent,
                tabs: [
                  SizedBox(
                    height: 40,
                    width: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      child: const Tab(
                        child: Text("Chats"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      child: const Tab(
                        child: Text("Groups"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      child: const Tab(
                        child: Text("Story"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      child: const Tab(
                        child: Text("Calls"),
                      ),
                    ),
                  ),
                ]),
            title: const AppTitleName(),
            actions: const <Widget>[
              HomeActions(),
            ],
          ),
          body: const TabBarView(
            children: [
              RecentChats(),
              GroupsPage(),
              StoryPage(),
              CallsPage(),
            ],
          ),
          bottomNavigationBar: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  backgroundColor: Colors.deepPurpleAccent,
                  icon: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: const Icon(
                      Icons.wechat,
                      size: 25.0,
                      color: Colors.deepPurpleAccent,
                    ),
                  ),
                  label: 'Chats',
                ),
                BottomNavigationBarItem(
                  backgroundColor: Colors.pinkAccent,
                  icon: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.white,
                      ),
                      child: const Icon(
                        Icons.auto_mode_sharp,
                        size: 25.0,
                        color: Colors.pinkAccent,
                      )),
                  label: 'Story',
                ),
                BottomNavigationBarItem(
                  backgroundColor: Colors.greenAccent,
                  icon: Container(
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.white,
                    ),
                    child: const Icon(
                      CupertinoIcons.add_circled_solid,
                      color: Colors.greenAccent,
                      size: 25.0,
                    ),
                  ),
                  label: 'Add',
                ),
                BottomNavigationBarItem(
                  backgroundColor: Colors.redAccent,
                  icon: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.white,
                    ),
                    child: const Icon(
                      CupertinoIcons.phone,
                      size: 25.0,
                      color: Colors.redAccent,
                    ),
                  ),
                  label: 'Calls',
                ),
                BottomNavigationBarItem(
                  backgroundColor: Colors.amberAccent,
                  icon: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.white,
                    ),
                    child: const Icon(
                      CupertinoIcons.person_alt,
                      color: Colors.amberAccent,
                    ),
                  ),
                  label: 'Profile',
                ),
              ],
              currentIndex: selectedIndex,
              selectedItemColor: Colors.white,
              onTap: _onItemTapped,
            ),
          ),
        ),
      ),
    );
  }
}
