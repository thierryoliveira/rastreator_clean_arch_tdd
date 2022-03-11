import 'package:rastreator/app/data/models/package/postal_type_model.dart';
import 'package:rastreator/app/domain/entities/package/object_entity.dart';

import 'event_model.dart';

class ObjectModel extends ObjectEntity {
  final String objectId;
  final List<EventModel> events;
  final String modality;
  final PostalTypeModel postalType;
  final bool enableAutoDeclaration;
  final bool allowImportCharge;
  final bool enablePostmanTravel;
  final bool blockObject;
  final bool hasLocker;
  final bool enableLocker;
  final bool enableCrowdshipping;

  const ObjectModel({
    required this.objectId,
    required this.events,
    required this.modality,
    required this.postalType,
    required this.enableAutoDeclaration,
    required this.allowImportCharge,
    required this.enablePostmanTravel,
    required this.blockObject,
    required this.hasLocker,
    required this.enableLocker,
    required this.enableCrowdshipping,
  }) : super(
          objectId: objectId,
          events: events,
          modality: modality,
          postalType: postalType,
          enableAutoDeclaration: enableAutoDeclaration,
          allowImportCharge: allowImportCharge,
          enablePostmanTravel: enablePostmanTravel,
          blockObject: blockObject,
          hasLocker: hasLocker,
          enableLocker: enableLocker,
          enableCrowdshipping: enableCrowdshipping,
        );

  factory ObjectModel.fromJson(Map<String, dynamic> json) {
    List<EventModel> events = <EventModel>[];

    if (json['eventos'] != null) {
      json['eventos'].forEach((e) => events.add(EventModel.fromJson(e)));
    }

    return ObjectModel(
      objectId: json['codObjeto'],
      events: events,
      modality: json['modalidade'],
      postalType: PostalTypeModel.fromJson(json['tipoPostal']),
      enableAutoDeclaration: json['habilitaAutoDeclaracao'],
      allowImportCharge: json['permiteEncargoImportacao'],
      enablePostmanTravel: json['habilitaPercorridaCarteiro'],
      blockObject: json['bloqueioObjeto'],
      hasLocker: json['possuiLocker'],
      enableLocker: json['habilitaLocker'],
      enableCrowdshipping: json['habilitaCrowdshipping'],
    );
  }

  Map<String, dynamic> toJson() => {
        'codObjeto': objectId,
        'eventos': events.map((e) => e.toJson()).toList(),
        'modalidade': modality,
        'tipoPostal': postalType.toJson(),
        'habilitaAutoDeclaracao': enableAutoDeclaration,
        'permiteEncargoImportacao': allowImportCharge,
        'habilitaPercorridaCarteiro': enablePostmanTravel,
        'bloqueioObjeto': blockObject,
        'possuiLocker': hasLocker,
        'habilitaLocker': enableLocker,
        'habilitaCrowdshipping': enableCrowdshipping,
      };
}
