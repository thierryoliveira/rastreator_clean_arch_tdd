import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rastreator/app/core/colors.dart';
import 'package:rastreator/app/domain/entities/package/package_entity.dart';
import 'package:rastreator/app/presentation/global/widgets/show_success_snackbar.dart';
import 'package:rastreator/app/presentation/package/bloc/package_bloc.dart';

import 'package:rastreator/app/presentation/package/widgets/event_card.dart';

class PackageTrackInfoScreen extends StatelessWidget {
  final String packageTitle;
  final String trackId;
  final PackageEntity package;

  PackageTrackInfoScreen(
      {required this.packageTitle,
      required this.trackId,
      required this.package});

  @override
  Widget build(BuildContext context) {
    return _buildPackageHeader(context);
  }

  _buildPackageHeader(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                    left: size.width * .01, top: size.height * .01),
                child: IconButton(
                  onPressed: () {
                    final bloc =
                        context.read<PackageBloc>().add(ClearTrackInfoEvent());
                  },
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
                padding: EdgeInsets.only(left: size.width * .02),
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
                trackId.toUpperCase(),
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              GestureDetector(
                onTap: () {
                  Clipboard.setData(ClipboardData(text: trackId));
                  showSuccessSnackbar(
                      'Código copiado para àrea de transferência');
                },
                child: Padding(
                  padding: EdgeInsets.only(left: size.width * .03),
                  child: FaIcon(
                    FontAwesomeIcons.copy,
                    color: kOrangeColor,
                    size: 18,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: size.height * .05,
          ),
          Expanded(
              child: RefreshIndicator(
            onRefresh: () async => context
                .read<PackageBloc>()
                .add(GetTrackInfoEvent(trackId, packageTitle)),
            child: Container(
                padding: EdgeInsets.only(
                    left: size.width * .05, right: size.width * .05),
                width: size.width,
                decoration: BoxDecoration(
                    color: kLighterGreyColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: ListView.builder(
                    itemCount: package.objects[0].events.length,
                    itemBuilder: (context, index) => EventCard(
                          event: package.objects[0].events[index],
                          badgeColor: index == 0 ? kGreenColor : kDarkBlueColor,
                        ))),
          ))
        ],
      ),
    );
  }
}
