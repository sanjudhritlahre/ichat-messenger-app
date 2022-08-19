import 'package:flutter/material.dart';
import 'package:ichat/home/home_screen.dart';
import 'package:ichat/settings/settings.dart';
import 'package:ichat/utils/routes.dart';

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

      routes: {
        "/" : (context) => const HomeScreen(),
        IchatRoutes.homeScreenRoute: (context) => const HomeScreen(),
        IchatRoutes.settingsPageRoute: (context) => const SettingsPage(),
      },
    );
  }
}
