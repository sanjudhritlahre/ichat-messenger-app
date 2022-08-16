import 'package:flutter/material.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              margin: const EdgeInsets.only(left: 20.0),
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: const Icon(
                Icons.account_circle_rounded,
                size: 30.0,
                color: Colors.white,
              )),
          Container(
            margin: const EdgeInsets.only(left: 20.0),
            child: const Text(
              "Accounts",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 180.0),
            child: const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}
