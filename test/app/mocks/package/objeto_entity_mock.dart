import 'package:rastreator/app/domain/entities/package/objeto_entity.dart';

import 'eventos_entity_mock.dart';
import 'tipo_postal_entity_mock.dart';

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
