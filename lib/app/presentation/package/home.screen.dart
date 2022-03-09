import 'package:flutter/material.dart';

import 'package:rastreator/app/core/colors.dart';
import 'package:rastreator/app/presentation/global/widgets/custom_textfield.dart';
import 'package:rastreator/app/presentation/package/widgets/no_package.screen.dart';
import 'package:rastreator/app/presentation/package/widgets/package_track_info.screen.dart';

import 'controllers/package.controller.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: Obx(() => Visibility(
            visible: controller.events.length == 0,
            child: Padding(
              padding: EdgeInsets.only(
                  bottom: size.height * .03, right: size.width * .03),
              child: FloatingActionButton(
                backgroundColor: kGreenColor,
                onPressed: () {
                  showDialogToAddPackage();
                },
                child: Icon(
                  Icons.add,
                ),
              ),
            ),
          )),
      backgroundColor: kDarkBlueColor,
      body: SafeArea(
          child: Obx(() => Container(
              child: controller.events.length > 0
                  ? Column(
                      children: [
                        PackageTrackInfoScreen(
                            packageTitle: controller.packageName,
                            trackId: controller.trackId)
                      ],
                    )
                  : Container(
                      child: NoPackageScreen(),
                    )))),
    );
  }

  showDialogToAddPackage() {
    final _formKey = GlobalKey<FormState>();

    Get.defaultDialog(
        onWillPop: () => controller.clearEvents(),
        contentPadding: EdgeInsets.fromLTRB(
            size.width * .05, 0, size.width * .05, size.height * .02),
        backgroundColor: kOffwhiteColor,
        title: 'Rastreie um novo pacote',
        titleStyle: TextStyle(color: kGreyColor, fontWeight: FontWeight.w500),
        content: Form(
          key: _formKey,
          child: Column(
            children: [
              CustomTextField(
                label: 'Apelido para o pacote',
                textController: controller.txtPackageName,
                isRequiredValidation: true,
              ),
              CustomTextField(
                label: 'Código de rastreio',
                textController: controller.txtTrackId,
                isRequiredValidation: true,
              ),
              Container(
                  margin: EdgeInsets.only(top: size.height * .02),
                  width: size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        controller.getTrackInfo(controller.txtTrackId.text);
                        controller.trackId.value = controller.txtTrackId.text;
                        controller.packageName.value =
                            controller.txtPackageName.text;
                      }
                    },
                    child: Text(
                      'Adicionar',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
}
