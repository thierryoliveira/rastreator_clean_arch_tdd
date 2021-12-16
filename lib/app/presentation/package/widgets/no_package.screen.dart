import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:rastreator/app/core/colors.dart';
import 'package:rastreator/app/presentation/package/controllers/package.controller.dart';
import 'package:rastreator/app/presentation/package/widgets/search_textfield.dart';

class NoPackageScreen extends GetWidget<PackageController> {
  const NoPackageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Get.width * .05, vertical: Get.height * .05),
            child: SearchTextfield(
                textController: controller.txtSearch,
                onSearch: () async {
                  await controller.getTrackInfo(controller.txtSearch.text);
                }),
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
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: Get.width * .8,
                      child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: Get.width * .07,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                shadows: <Shadow>[
                                  Shadow(
                                      offset: Offset(0, 4),
                                      blurRadius: 4.0,
                                      color: Colors.black.withOpacity(0.3))
                                ],
                              ),
                              text: 'Ainda ',
                              children: [
                            TextSpan(
                                text: 'não há ',
                                style: TextStyle(color: kDarkBlueColor)),
                            TextSpan(text: 'pacotes, que tal '),
                            TextSpan(
                                text: 'adicionar ',
                                style: TextStyle(color: kDarkBlueColor)),
                            TextSpan(text: 'um '),
                            TextSpan(
                                text: 'novo?',
                                style: TextStyle(color: kDarkBlueColor)),
                          ])),
                    ),
                    SizedBox(
                        width: Get.width * .7,
                        height: Get.height * .2,
                        child: SvgPicture.asset('assets/deliveries.svg'))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
