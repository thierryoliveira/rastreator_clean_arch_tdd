import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rastreator/app/core/colors.dart';

class NoPackageScreen extends StatelessWidget {
  const NoPackageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * .05, vertical: size.height * .05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Rastreator',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: EdgeInsets.only(left: size.width * .03),
                  child: FaIcon(
                    FontAwesomeIcons.truckLoading,
                    color: kOrangeColor,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                  left: size.width * .05, right: size.width * .05),
              width: size.width,
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
                      width: size.width * .8,
                      child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: size.width * .07,
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
                        width: size.width * .7,
                        height: size.height * .2,
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
