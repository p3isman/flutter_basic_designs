import 'package:flutter/material.dart';

import '../widgets/background.dart';
import '../widgets/body.dart';
import '../widgets/bottom_bar.dart';

class AdvancedDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(),
          Body(),
        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
