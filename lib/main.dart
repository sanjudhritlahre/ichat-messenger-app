import 'package:flutter/material.dart';
import 'package:ichat/settings/widgets/darkmode_widgets.dart';
import 'package:ichat/utils/routes.dart';
import 'package:ichat/widgets/navigation_bar.dart';
import 'settings/settings.dart';

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
        "/": (context) => const HomeNavigationBar(),
        IchatRoutes.homeNavigationBarRoute : (context) => const HomeNavigationBar(),
        IchatRoutes.settingsPageRoute : (context) => const SettingsPage(),
        IchatRoutes.darkModedraggablescrollsheetRoute : (context) => const DarkModeDraggableScrollableSheet(),
      },
    );
  }
}
