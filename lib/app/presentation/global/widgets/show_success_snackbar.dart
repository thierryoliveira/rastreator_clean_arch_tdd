import 'package:flutter/material.dart';
import 'package:rastreator/app/core/colors.dart';
import 'package:rastreator/app/core/globals.dart';

showSuccessSnackbar(String text) {
  final SnackBar _snackBar = SnackBar(
    content: Text(text),
    backgroundColor: kGreenColor,
  );
  snackbarKey.currentState?.showSnackBar(_snackBar);
}
