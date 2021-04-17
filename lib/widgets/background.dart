import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff2e305f), Color(0xff202333)],
        ),
      ),
    );
  }
}
