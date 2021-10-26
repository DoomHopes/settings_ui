import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor,
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 5),
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      height: 60,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const MyIconButton(
            icon: Icons.accessibility_new,
            text: 'Bad Cat',
          ),
          const MyIconButton(
            icon: Icons.contacts,
            text: 'My next treat',
          ),
          const MyIconButton(
            icon: Icons.home,
            text: 'Home',
          ),
          const MyIconButton(
            icon: Icons.search,
            text: 'Search',
          ),
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blueAccent,
            ),
            child: const IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
                size: 30,
              ),
              onPressed: null,
            ),
          ),
        ],
      ),
    );
  }
}

class MyIconButton extends StatelessWidget {
  final String text;
  final IconData icon;

  const MyIconButton({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            icon,
            color: Theme.of(context).iconTheme.color,
          ),
          onPressed: null,
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
