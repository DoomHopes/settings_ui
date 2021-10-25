import 'package:flutter/material.dart';
import 'package:settings_ui/widgets/profile_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: const ProfileWidget(),
    );
  }
}
