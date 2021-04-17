import 'package:flutter/material.dart';

import 'screens/basic_design.dart';
import 'screens/scroll_design.dart';
import 'screens/advanced_design.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'advanced_design',
        routes: {
          'basic_design': (_) => BasicDesign(),
          'scroll_design': (_) => ScrollDesign(),
          'advanced_design': (_) => AdvancedDesign(),
        });
  }
}
