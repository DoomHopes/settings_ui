import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({Key? key}) : super(key: key);

  @override
  _SwitchWidgetState createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: const Text(
        'Dark mode',
        style: TextStyle(
          fontSize: 18,
        ),
      ),
      activeTrackColor: Colors.grey[300],
      inactiveThumbColor: Colors.blue,
      secondary: Container(
        child: const Icon(Icons.dark_mode_outlined),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFFBDBDBD),
        ),
      ),
      value: _switchValue,
      onChanged: (bool value) {
        setState(() {
          _switchValue = value;
        });
      },
    );
  }
}
