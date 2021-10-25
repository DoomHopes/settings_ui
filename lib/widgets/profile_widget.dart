import 'package:flutter/material.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      color: Colors.transparent,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 10,
            left: 20,
            child: SizedBox(
              height: 70,
              width: 70,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(80.0),
                child: Image.asset('assets/profile.jpg'),
              ),
            ),
          ),
          const Positioned(
            top: 25,
            left: 105,
            child: Text(
              'Bad cat',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Positioned(
            top: 52,
            left: 105,
            child: Text(
              'Edit personal details',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          const Positioned(
            top: 35,
            left: 350,
            child: Icon(Icons.arrow_forward_ios_outlined),
          ),
        ],
      ),
    );
  }
}
