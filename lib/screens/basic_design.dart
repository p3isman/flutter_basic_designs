import 'dart:ui';

import 'package:flutter/material.dart';

class BasicDesign extends StatelessWidget {
  const BasicDesign({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage('assets/landscape.jpg')),
          _Title(),
          _Buttons(),
          _Text(),
        ],
      ),
    );
  }
}

class _Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Oeschinen Lake Campground', style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 5.0),
              Text('Kandersteg, Switzerland', style: TextStyle(color: Colors.black45)),
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red),
          Text('41'),
        ],
      ),
    );
  }
}

class _Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(Icons.phone, color: Colors.blue),
              SizedBox(height: 10.0),
              Text('CALL', style: TextStyle(color: Colors.blue)),
            ],
          ),
          Column(
            children: [
              Icon(Icons.location_on, color: Colors.blue),
              SizedBox(height: 10.0),
              Text('ROUTE', style: TextStyle(color: Colors.blue)),
            ],
          ),
          Column(
            children: [
              Icon(Icons.share, color: Colors.blue),
              SizedBox(height: 10.0),
              Text('SHARE', style: TextStyle(color: Colors.blue)),
            ],
          ),
        ],
      ),
    );
  }
}

class _Text extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Text('Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
          'Alps. Situated 1,578 meters above sea level, it is one of the '
          'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
          'half-hour walk through pastures and pine forest, leads you to the '
          'lake, which warms to 20 degrees Celsius in the summer. Activities '
          'enjoyed here include rowing, and riding the summer toboggan run.',
      softWrap: true,),
    );
  }
}


