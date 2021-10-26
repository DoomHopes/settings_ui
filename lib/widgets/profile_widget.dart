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
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red, width: 3),
                shape: BoxShape.circle,
              ),
              child: SizedBox(
                height: 70,
                width: 70,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(80.0),
                  child: Image.asset('assets/profile.jpg'),
                ),
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

/*Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 8, 3, 8),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red, width: 3),
                shape: BoxShape.circle,
              ),
              child: SizedBox(
                height: 70,
                width: 70,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(80.0),
                  child: Image.asset('assets/profile.jpg'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 23, 0, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text(
                  'Bad cat',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Edit personal details',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(127, 10, 5, 10),
            child: Icon(Icons.arrow_forward_ios_outlined),
          ),
        ],
      ), */
