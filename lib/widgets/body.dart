import 'dart:ui';

import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Column(
        children: [
          Title(),
          _CardTable(),
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(left: 10.0, right: 100.0, top: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Classify transaction',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Classify this transaction into a particular category',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _SingleCard(
              color: Colors.lightBlue,
              icon: Icon(Icons.border_all_rounded),
              string: 'General',
            ),
            _SingleCard(
              color: Colors.purpleAccent,
              icon: Icon(Icons.emoji_transportation),
              string: 'Transports',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.pink,
              icon: Icon(Icons.shopping_bag_outlined),
              string: 'Shopping',
            ),
            _SingleCard(
              color: Colors.orangeAccent,
              icon: Icon(Icons.list_alt),
              string: 'Bills',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.blue.shade600,
              icon: Icon(Icons.movie),
              string: 'Entertainment',
            ),
            _SingleCard(
              color: Colors.green,
              icon: Icon(Icons.local_grocery_store),
              string: 'Grocery',
            ),
          ],
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final Color color;
  final Icon icon;
  final String string;

  _SingleCard({required this.color, required this.icon, required this.string});
  @override
  Widget build(BuildContext context) {
    var foreground = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: color,
          foregroundColor: Colors.white,
          child: icon,
          radius: 30.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(string, style: TextStyle(color: color)),
      ],
    );
    return _CardBackground(child: foreground);
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
              height: 180.0,
              decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: this.child),
        ),
      ),
    );
  }
}
