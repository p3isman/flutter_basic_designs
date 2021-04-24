import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/basic_design.dart';
import 'screens/scroll_design.dart';
import 'screens/advanced_design.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Light notification area
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        title: 'Designs',
        initialRoute: 'advanced_design',
        routes: {
          'basic_design': (_) => BasicDesign(),
          'scroll_design': (_) => ScrollDesign(),
          'advanced_design': (_) => AdvancedDesign(),
        });
  }
}
