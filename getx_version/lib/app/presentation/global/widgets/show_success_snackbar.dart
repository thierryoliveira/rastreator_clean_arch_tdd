import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rastreator/app/core/colors.dart';

showSuccessSnackbar(String title, String description) => Get.snackbar(
      title,
      description,
      snackPosition: SnackPosition.BOTTOM,
      colorText: Colors.white,
      backgroundColor: kGreenColor,
    );
