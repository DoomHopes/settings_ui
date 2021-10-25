import 'package:flutter/material.dart';

class SwitchWidget extends StatelessWidget {
  final Color backgroundIconColor;
  final String text;
  final Icon icon;
  final Function onChanged;
  final bool value;

  const SwitchWidget(
      {Key? key,
      required this.backgroundIconColor,
      required this.text,
      required this.icon,
      required this.onChanged,
      required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 55,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 5,
            left: 18,
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: backgroundIconColor,
              ),
              child: icon,
            ),
          ),
          Positioned(
            top: 15,
            left: 105,
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 5,
            right: 15,
            child: Switch(
              activeTrackColor: Colors.grey[300],
              inactiveTrackColor: Colors.grey[300],
              inactiveThumbColor: Colors.blue,
              value: value,
              onChanged: (bool value) {
                onChanged(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
