import 'package:flutter/material.dart';
import '../widgets/categories_selector.dart';
import '../widgets/favorite_contacts.dart';
import '../widgets/recent_chats.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorLight,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        leading: IconButton(
          icon: const Icon(Icons.wechat_rounded),
          iconSize: 30.0,
          color: Colors.white,
          onPressed: () {},
        ),
        title: const Text(
          'iChats',
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.light_mode),
                iconSize: 25.0,
                color: Colors.yellow,
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.search_rounded),
                iconSize: 30.0,
                color: Colors.white,
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          const CategorySelector(),
          Expanded(
            child: Container(
              height: 500.0,
              decoration: const BoxDecoration(
                color: Color(0xFFFEF9EB),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: const <Widget>[
                  FavoriteContacts(),
                  RecentChats(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
