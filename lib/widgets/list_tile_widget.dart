import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  final String text;
  final Icon icon;
  final Color iconColor;

  const ListTileWidget(
      {Key? key,
      required this.text,
      required this.icon,
      required this.iconColor})
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
      leading: Container(
        child: icon,
        height: 35,
        width: 35,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: iconColor,
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_outlined,
      ),
    );
  }
}
