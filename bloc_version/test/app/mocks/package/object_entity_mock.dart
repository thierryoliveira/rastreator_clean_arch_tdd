import 'package:rastreator/app/domain/entities/package/object_entity.dart';

import 'events_entity_mock.dart';
import 'postal_type_entity_mock.dart';

final objectEntityMock = ObjectEntity(
    objectId: 'LE424296059SE',
    events: eventosEntityMock,
    modality: 'V',
    postalType: postalTypeEntityMock,
    enableAutoDeclaration: false,
    allowImportCharge: false,
    enablePostmanTravel: false,
    blockObject: false,
    hasLocker: false,
    enableLocker: false,
    enableCrowdshipping: false);
