import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rastreator/app/core/colors.dart';
import 'package:rastreator/app/core/shared/shared_methods.dart';

class CustomTextField extends GetWidget {
  final String label;
  final TextEditingController textController;
  final bool isRequiredValidation;
  const CustomTextField({
    Key? key,
    required this.label,
    required this.textController,
    this.isRequiredValidation = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: Get.width * 0.02,
              bottom: Get.height * 0.01,
              top: Get.height * 0.02),
          child: Text(
            label,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: kDarkBlueColor),
          ),
        ),
        TextFormField(
          controller: textController,
          validator: (value) {
            if (isRequiredValidation) {
              return (!SharedMethods.checkIfHasValue(value))
                  ? 'Campo obrigatório'
                  : null;
            }
          },
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(15))),
          ),
        ),
      ],
    );
  }
}
