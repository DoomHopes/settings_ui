import 'package:flutter/material.dart';
import 'package:settings_ui/widgets/list_tile_widget.dart';
import 'package:settings_ui/widgets/profile_widget.dart';
import 'package:settings_ui/widgets/switch_widget.dart';
import 'package:settings_ui/widgets/title_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _selectedDarkMode = false;
  bool _selectedNotif = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: Column(
        children: <Widget>[
          const ProfileWidget(),
          SwitchWidget(
            backgroundIconColor: Colors.grey,
            text: 'Dark Mode',
            icon: const Icon(Icons.nightlight_outlined),
            onChanged: (bool newValue) {
              setState(() {
                _selectedDarkMode = newValue;
              });
            },
            value: _selectedDarkMode,
          ),
          const TitleWidget(
            text: 'Profile',
          ),
          const ListTileWidget(
            text: 'Edit profile',
            icon: Icon(Icons.contact_page_outlined),
            iconColor: Colors.amber,
          ),
          const ListTileWidget(
            text: 'Change password',
            icon: Icon(Icons.vpn_key_outlined),
            iconColor: Colors.blue,
          ),
          const TitleWidget(
            text: 'Notifications',
          ),
          SwitchWidget(
            backgroundIconColor: Colors.green,
            text: 'Notifications',
            icon: const Icon(Icons.notifications),
            onChanged: (bool newValue) {
              setState(() {
                _selectedNotif = newValue;
              });
            },
            value: _selectedNotif,
          ),
        ],
      ),
    );
  }
}
