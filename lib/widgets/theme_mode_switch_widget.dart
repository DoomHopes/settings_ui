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
      title: Container(
        padding: const EdgeInsets.fromLTRB(35, 0, 0, 0),
        child: const Text(
          'Dark mode',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
      activeTrackColor: Colors.grey[300],
      inactiveThumbColor: Colors.blue,
      secondary: Container(
        height: 35,
        width: 35,
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
