import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:rastreator/app/core/colors.dart';
import 'package:rastreator/app/presentation/package/controllers/package.controller.dart';
import 'package:rastreator/app/presentation/package/widgets/event_card.dart';

class PackageTrackInfoScreen extends GetWidget<PackageController> {
  final String packageTitle;

  PackageTrackInfoScreen({required this.packageTitle});

  @override
  Widget build(BuildContext context) {
    return _buildPackageHeader();
  }

  _buildPackageHeader() => Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: Get.width * .01, top: Get.height * .01),
                  child: IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.chevronLeft,
                      color: Colors.white,
                    ),
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  packageTitle,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(left: Get.width * .02),
                  child: FaIcon(
                    FontAwesomeIcons.gift,
                    color: kGreenColor,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Text(controller.entity!.objects[0].objectId),
                Text(
                  'LE424296059SE',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Padding(
                  padding: EdgeInsets.only(left: Get.width * .03),
                  child: FaIcon(
                    FontAwesomeIcons.copy,
                    color: kOrangeColor,
                    size: 18,
                  ),
                )
              ],
            ),
            SizedBox(
              height: Get.height * .05,
            ),
            Expanded(
                child: Container(
                    padding: EdgeInsets.only(
                        left: Get.width * .05, right: Get.width * .05),
                    width: Get.width,
                    decoration: BoxDecoration(
                        color: kLighterGreyColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25))),
                    child: GetX<PackageController>(
                      initState: (_) {
                        Get.find<PackageController>()
                            .getTrackInfo('LE424296059SE');
                      },
                      builder: (_) {
                        return ListView.builder(
                            itemCount: controller.events.length,
                            itemBuilder: (context, index) => EventCard(
                                  event: controller.events[index],
                                  badgeColor:
                                      index == 0 ? kGreenColor : kDarkBlueColor,
                                ));
                      },
                    )))
          ],
        ),
      );
}
