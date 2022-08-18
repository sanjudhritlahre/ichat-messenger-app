import 'package:flutter/material.dart';
import 'package:ichat/models/message_model.dart';
import 'package:ichat/settings/components/chat_settings.dart';
import 'package:ichat/widgets/navigation_bar.dart';
import 'components/account_settings.dart';
import 'components/bottom_tagline.dart';
import 'components/thememode_settings.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const HomeNavigationBar()),
          ),
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Settings",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, right: 20.0),
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    radius: 35.0,
                    backgroundImage: AssetImage(currentUser.imageUrl),
                  ),
                  title: Text(
                    currentUser.name,
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    currentUser.number.toString(),
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.qr_code_2_rounded,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0,),
            const Divider(
              thickness: 1.0,
              indent: 20.0,
            ),
            const SizedBox(height: 20.0,),
             const ThemeModeSettings(),
             const AccountSettings(),
             const ChatSettings(),
          ],
        ),
      ),
      bottomNavigationBar: const BottomTagLine(),
    );
  }
}


