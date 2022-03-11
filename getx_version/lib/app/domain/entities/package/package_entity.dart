import 'package:equatable/equatable.dart';

import 'object_entity.dart';

class PackageEntity extends Equatable {
  final List<ObjectEntity> objects;
  final int amount;
  final String result;
  final String version;

  const PackageEntity({
    required this.objects,
    required this.amount,
    required this.result,
    required this.version,
  });

  @override
  List<Object> get props => [objects, amount, result, version];
}
