import 'package:flutter/material.dart';
import 'package:rastreator/app/core/colors.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: kOffwhiteColor),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(kBlueColor),
            ),
            SizedBox(
              width: 20,
            ),
            Text('Obtendo informações...')
          ],
        ),
      ),
    );
  }
}
