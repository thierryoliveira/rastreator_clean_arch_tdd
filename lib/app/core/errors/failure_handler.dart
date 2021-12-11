import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rastreator/app/core/colors.dart';

import 'failures.dart';

class FailureHandler {
  static handleFailureToSnackbar(Failure failure) {
    showErrorSnackbar(failure: failure);
  }

  static showErrorSnackbar(
      {String title = 'Ops... ocorreu um erro',
      String description = 'Tente novamente',
      required Failure failure}) {
    return Get.snackbar(
      title,
      description,
      snackPosition: SnackPosition.BOTTOM,
      colorText: Colors.white,
      backgroundColor: kRedColor,
    );
  }
}
