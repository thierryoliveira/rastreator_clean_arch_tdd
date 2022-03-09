import 'package:rastreator/app/data/models/package/object_model.dart';

import 'event_model_mock.dart';
import 'postal_type_model_mock.dart';

final objectModelMock = ObjectModel(
    objectId: 'LE424296059SE',
    events: [eventModelMock],
    modality: 'V',
    postalType: postalTypeModelMock,
    enableAutoDeclaration: false,
    allowImportCharge: false,
    enablePostmanTravel: false,
    blockObject: false,
    hasLocker: false,
    enableLocker: false,
    enableCrowdshipping: false);
