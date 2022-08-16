import 'package:flutter/material.dart';
import 'package:ichat/models/message_model.dart';
import 'package:ichat/screens/home_screen.dart';
import 'components/account_settings.dart';
import 'components/bottom_tagline.dart';
import 'components/darkmode_settings.dart';

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
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const HomeScreen()),
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
            const SizedBox(
              height: 50.0,
            ),
            const DarkModeSettings(),
            const SizedBox(height: 20.0),
            const AccountSettings(),
          ],
        ),
      ),
      bottomNavigationBar: const BottomTagLine(),
    );
  }
}