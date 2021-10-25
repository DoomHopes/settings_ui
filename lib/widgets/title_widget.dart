import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String text;

  const TitleWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
      margin: const EdgeInsets.fromLTRB(0, 15, 0, 15),
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 16,
          color: Color(0xFF303030),
        ),
      ),
    );
  }
}
