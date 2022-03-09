import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rastreator/app/core/colors.dart';
import 'package:rastreator/app/infrastructure/navigation/navigation.dart';
import 'package:rastreator/app/infrastructure/navigation/routes.dart';

void main() async {
  var initialRoute = await Routes.initialRoute;
  runApp(Main(initialRoute));
}

class Main extends StatelessWidget {
  final String initialRoute;
  Main(this.initialRoute);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: initialRoute,
      getPages: Nav.routes,
      theme: ThemeData(
          fontFamily: 'Quicksand',
          textTheme: TextTheme(bodyText2: TextStyle(color: kGreyColor))),
    );
  }
}
