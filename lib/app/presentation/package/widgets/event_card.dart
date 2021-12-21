import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rastreator/app/core/colors.dart';
import 'package:rastreator/app/core/extensions/date_extensions.dart';
import 'package:rastreator/app/domain/entities/package/event_entity.dart';
import 'package:rastreator/app/presentation/global/widgets/custom_divider.dart';

class EventCard extends StatelessWidget {
  final EventEntity event;
  final Color badgeColor;
  late String destinationCity;

  EventCard({Key? key, required this.event, required this.badgeColor})
      : super(key: key) {
    destinationCity = event.destinationUnity != null
        ? '- ${event.destinationUnity!.address.city}'
        : '';
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: size.width * .02),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                event.dtHrCreated!.formatToPattern('dd/MMM'),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                event.dtHrCreated!
                    .formatToPattern('hh:mm')
                    .replaceAll(':', 'h'),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Expanded(
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Container(
                padding: EdgeInsets.only(
                    left: size.width * .05, right: size.width * .05),
                margin: EdgeInsets.only(
                    left: 10,
                    bottom: size.height * .015,
                    top: size.height * .015),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: size.height * .02),
                      child: Text(
                        '${event.description} $destinationCity',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 16,
                            color: kDarkBlueColor,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: size.height * .01, bottom: size.height * .01),
                      child: CustomDivider(),
                    ),
                    Text(event.unity.type, style: TextStyle(fontSize: 16)),
                    Padding(
                      padding: EdgeInsets.only(bottom: size.height * .02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '${event.unity.address!.city} - ${event.unity.address!.fu}',
                            style: TextStyle(fontSize: 16),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: size.width * .01),
                            child: Icon(
                              Icons.location_on,
                              color: kOrangeColor,
                              size: 16,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 20,
                height: 20,
                decoration:
                    BoxDecoration(color: badgeColor, shape: BoxShape.circle),
              ),
            ],
          ),
        )
      ],
    );
  }
}
