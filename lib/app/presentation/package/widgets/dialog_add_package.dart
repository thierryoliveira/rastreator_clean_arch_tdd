import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rastreator/app/core/colors.dart';
import 'package:rastreator/app/presentation/global/widgets/custom_textfield.dart';

import '../bloc/package_bloc.dart';

//TODO!: REFACTOR THIS DIALOG USING BLOC WITHOUT GETX

showDialogAddPackage({required BuildContext context}) {
  final _txtName = TextEditingController();
  final _txtTrackId = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  // final size = MediaQueryData.fromWindow(WidgetsBinding.instance!.window);
  final size = MediaQuery.of(context).size;

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: kOffwhiteColor,
          actions: [
            Container(
                margin: EdgeInsets.only(top: size.height * .02),
                width: size.width,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context, rootNavigator: true).pop();
                    if (_formKey.currentState!.validate()) {
                      context.read<PackageBloc>().add(
                          GetTrackInfoEvent(_txtTrackId.text, _txtName.text));
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
          title: Text('Rastreie um novo pacote',
              style: TextStyle(color: kGreyColor, fontWeight: FontWeight.w500)),
          content: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
              ],
            ),
          ),
        );
      });
}
