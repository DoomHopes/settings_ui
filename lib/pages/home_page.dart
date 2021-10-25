import 'package:flutter/material.dart';
import 'package:settings_ui/widgets/profile_widget.dart';
import 'package:settings_ui/widgets/theme_mode_switch_widget.dart';
import 'package:settings_ui/widgets/title_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
        children: const <Widget>[
          ProfileWidget(),
          SwitchWidget(),
          TitleWidget(
            text: 'Profile',
          ),
        ],
      ),
    );
  }
}
