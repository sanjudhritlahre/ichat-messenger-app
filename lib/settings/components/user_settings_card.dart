import 'package:flutter/material.dart';
import '../../models/message_model.dart';
import 'account_settings.dart';
import 'app_languages.dart';
import 'chat_settings.dart';
import 'data_storage.dart';
import 'help_support.dart';
import 'notification_sound.dart';
import 'share_invitation.dart';
import 'thememode_settings.dart';

class SettingUserCard extends StatelessWidget {
  const SettingUserCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          const SizedBox(
            height: 10.0,
          ),
          const Divider(
            thickness: 1.0,
            indent: 20.0,
          ),
          const SizedBox(
            height: 20.0,
          ),
          const ThemeModeSettings(),
          const AccountSettings(),
          const ChatSettings(),
          const NotifictionSoundeSettings(),
          const DataStorageSettings(),
          const HelpAndSupport(),
          const AppLanguages(),
          const ShareAndInvitations(),
        ],
      ),
    );
  }
}
