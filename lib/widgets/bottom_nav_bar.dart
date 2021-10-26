import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const TextStyle textStyle = TextStyle(
      fontSize: 10,
    );

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
      width: 395,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.contacts,
                  color: Theme.of(context).iconTheme.color,
                ),
                onPressed: null,
              ),
              const Text(
                'Bad Cat',
                style: textStyle,
              ),
            ],
          ),
          Column(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.accessibility_new,
                  color: Theme.of(context).iconTheme.color,
                ),
                onPressed: null,
              ),
              const Text(
                'My next treat',
                style: textStyle,
              ),
            ],
          ),
          Column(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: Theme.of(context).iconTheme.color,
                ),
                onPressed: null,
              ),
              const Text(
                'Home',
                style: textStyle,
              ),
            ],
          ),
          Column(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Theme.of(context).iconTheme.color,
                ),
                onPressed: null,
              ),
              const Text(
                'Search',
                style: textStyle,
              ),
            ],
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
