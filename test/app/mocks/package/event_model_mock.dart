import 'package:rastreator/app/data/models/package/event_model.dart';

import 'destination_unity_address_entity_mock.dart';
import 'destination_unity_address_model_mock.dart';
import 'destination_unity_model_mock.dart';
import 'unity_model_mock.dart';

final eventModelMock = EventModel(
    id: 'RO',
    description: 'Objeto em trânsito - por favor aguarde',
    dtHrCreated: DateTime.parse('2021-12-10T15:26:59'),
    type: '01',
    unity: unityModelMock,
    destinationUnity: destinationUnityModelMock);
