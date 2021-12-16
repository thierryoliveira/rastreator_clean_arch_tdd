import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rastreator/app/core/colors.dart';
import 'package:rastreator/app/presentation/package/widgets/package_track_info.screen.dart';

import 'controllers/package.controller.dart';

class HomeScreen extends GetView<PackageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: controller.events.length > 0
          ? Padding(
              padding: EdgeInsets.only(
                  bottom: Get.height * .03, right: Get.width * .03),
              child: FloatingActionButton(
                backgroundColor: kGreenColor,
                onPressed: () {},
                child: Icon(
                  Icons.add,
                ),
              ),
            )
          : null,
      backgroundColor: kDarkBlueColor,
      body: SafeArea(
          child: Column(
        children: [PackageTrackInfoScreen(packageTitle: 'Apple MacBook Air')],
      )),
    );
  }
}
