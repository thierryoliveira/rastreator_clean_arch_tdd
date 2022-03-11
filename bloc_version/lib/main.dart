import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:rastreator/app/core/colors.dart';
import 'package:rastreator/app/core/globals.dart';
import 'package:rastreator/app/presentation/package/bloc/package_bloc.dart';
import 'package:rastreator/app/presentation/screens.dart';
import './app/core/dependency_injection/injection_container.dart' as di;

void main() async {
  await di.init();
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.sl<PackageBloc>(),
      child: MaterialApp(
        scaffoldMessengerKey: snackbarKey,
        theme: ThemeData(
            fontFamily: 'Quicksand',
            textTheme: TextTheme(bodyText2: TextStyle(color: kGreyColor))),
        home: HomeScreen(),
      ),
    );
  }
}
