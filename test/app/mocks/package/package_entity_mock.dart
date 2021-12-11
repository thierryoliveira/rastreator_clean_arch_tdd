import 'package:rastreator/app/domain/entities/package/objeto_entity.dart';
import 'package:rastreator/app/domain/entities/package/package_entity.dart';

import 'objeto_entity_mock.dart';

final packageEntityMock = PackageEntity(
    objects: [objectEntityMock],
    amount: 1,
    result: 'Todos os Eventos',
    version: '1.6.11');
