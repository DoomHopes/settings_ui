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
          const BoxShadow(
            color: Color(0xFF757575),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 5),
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
          Column(
            children: <Widget>[
              const IconButton(
                icon: Icon(Icons.contacts),
                onPressed: null,
              ),
              Text(
                'Bad Cat',
                style: textStyle,
              ),
            ],
          ),
          Column(
            children: <Widget>[
              const IconButton(
                icon: Icon(Icons.accessibility_new),
                onPressed: null,
              ),
              Text(
                'My next treat',
                style: textStyle,
              ),
            ],
          ),
          Column(
            children: <Widget>[
              const IconButton(
                icon: Icon(Icons.home),
                onPressed: null,
              ),
              Text(
                'Home',
                style: textStyle,
              ),
            ],
          ),
          Column(
            children: <Widget>[
              const IconButton(
                icon: Icon(Icons.search),
                onPressed: null,
              ),
              Text(
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
