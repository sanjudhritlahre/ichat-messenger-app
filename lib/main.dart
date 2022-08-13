import 'package:flutter/material.dart';
import 'package:ichat/widgets/navigation_bar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // This widget is the root of your application.

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "iChat",
      theme: ThemeData(
        primaryColor: Colors.white,
        primaryColorLight: Colors.deepPurpleAccent,
      ),
      home: const HomeNavigationBar(),
    );
  }
}
