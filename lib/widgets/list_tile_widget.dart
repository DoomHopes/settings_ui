import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  final String text;
  final Icon icon;

  const ListTileWidget({Key? key, required this.text, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
      leading: icon,
      trailing: const Icon(Icons.arrow_forward_ios_outlined),
    );
  }
}
