import 'package:flutter/material.dart';
import 'package:rastreator/app/core/colors.dart';
import 'package:rastreator/app/core/globals.dart';

showErrorSnackbar(String text) {
  final SnackBar _snackBar = SnackBar(
    content: Text(text),
    backgroundColor: kRedColor,
  );
  snackbarKey.currentState?.showSnackBar(_snackBar);
}
