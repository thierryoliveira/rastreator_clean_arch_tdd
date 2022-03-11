import 'package:flutter/material.dart';
import 'package:rastreator/app/core/colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 1,
      decoration: BoxDecoration(
          color: kLighterGreyColor,
          borderRadius: BorderRadius.all(Radius.circular(50))),
    );
  }
}
