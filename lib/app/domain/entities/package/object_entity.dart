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
