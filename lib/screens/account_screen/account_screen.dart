import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/common_navigation.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreen();
}

class _AccountScreen extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("ACCOUNT"),
          ElevatedButton(
              onPressed: () {
                CommonNavigation(parentcontext: context).navigatesplash();
              },
              child: const Text("Logout")),
        ],
      )),
    );
  }
}
