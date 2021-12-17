import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rastreator/app/core/colors.dart';
import 'package:rastreator/app/presentation/global/widgets/custom_textfield.dart';

showDialogAddPackage({required Function onSubmit}) {
  final _txtName = TextEditingController();
  final _txtTrackId = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  Get.defaultDialog(
      contentPadding: EdgeInsets.fromLTRB(
          Get.width * .05, 0, Get.width * .05, Get.height * .02),
      backgroundColor: kOffwhiteColor,
      title: 'Rastreie um novo pacote',
      titleStyle: TextStyle(color: kGreyColor, fontWeight: FontWeight.w500),
      content: Form(
        key: _formKey,
        child: Column(
          children: [
            CustomTextField(
              label: 'Apelido para o pacote',
              textController: _txtName,
              isRequiredValidation: true,
            ),
            CustomTextField(
              label: 'Código de rastreio',
              textController: _txtTrackId,
              isRequiredValidation: true,
            ),
            Container(
                margin: EdgeInsets.only(top: Get.height * .02),
                width: Get.width,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      onSubmit();
                    }
                  },
                  child: Text(
                    'Adicionar',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: kGreenColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                ))
          ],
        ),
      ));
}
