import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  final String text;
  final IconData icon;
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
      title: Container(
        padding: const EdgeInsets.fromLTRB(35, 0, 0, 0),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      leading: Container(
        child: Icon(
          icon,
          color: Colors.white,
        ),
        height: 35,
        width: 35,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: iconColor,
        ),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_outlined,
        color: Theme.of(context).iconTheme.color,
      ),
    );
  }
}
