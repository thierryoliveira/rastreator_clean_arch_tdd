import 'package:equatable/equatable.dart';
import 'event_entity.dart';
import 'postal_type_entity.dart';

class ObjectEntity extends Equatable {
  final String objectId;
  final List<EventEntity> events;
  final String modality;
  final PostalTypeEntity postalType;
  final bool enableAutoDeclaration;
  final bool allowImportCharge;
  final bool enablePostmanTravel;
  final bool blockObject;
  final bool hasLocker;
  final bool enableLocker;
  final bool enableCrowdshipping;

  const ObjectEntity({
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
  });

  factory ObjectEntity.fromJson(Map<String, dynamic> json) => ObjectEntity(
        objectId: json['codObjeto'],
        events: (json['eventos'])?.map((e) => EventEntity.fromJson(e)).toList(),
        modality: json['modalidade'],
        postalType: PostalTypeEntity.fromJson(json['tipoPostal']),
        enableAutoDeclaration: json['habilitaAutoDeclaracao'],
        allowImportCharge: json['permiteEncargoImportacao'],
        enablePostmanTravel: json['habilitaPercorridaCarteiro'],
        blockObject: json['bloqueioObjeto'],
        hasLocker: json['possuiLocker'],
        enableLocker: json['habilitaLocker'],
        enableCrowdshipping: json['habilitaCrowdshipping'],
      );

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

  @override
  List<Object> get props {
    return [
      objectId,
      events,
      modality,
      postalType,
      enableAutoDeclaration,
      allowImportCharge,
      enablePostmanTravel,
      blockObject,
      hasLocker,
      enableLocker,
      enableCrowdshipping,
    ];
  }
}
