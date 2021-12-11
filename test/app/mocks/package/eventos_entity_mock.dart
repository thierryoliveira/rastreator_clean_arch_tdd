import 'package:rastreator/app/domain/entities/package/evento_entity.dart';

import 'unidade_destino_entity_mock.dart';
import 'unidade_entity_mock.dart';

final eventosEntityMock = <EventEntity>[
  EventEntity(
      id: 'RO',
      description: 'Objeto em trânsito - por favor aguarde',
      dtHrCreated: DateTime.parse('2021-12-10T15:26:59'),
      type: '01',
      unity: unityEntityMock,
      destinationUnity: unidadeDestinoEntityMock)
];
