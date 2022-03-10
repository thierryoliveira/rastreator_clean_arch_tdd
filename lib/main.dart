import 'package:flutter/material.dart';

import 'package:rastreator/app/core/colors.dart';
import 'package:rastreator/app/presentation/screens.dart';
import './app/core/dependency_injection/injection_container.dart' as di;

void main() async {
  await di.init();
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Quicksand',
          textTheme: TextTheme(bodyText2: TextStyle(color: kGreyColor))),
      home: HomeScreen(),
    );
  }
}
