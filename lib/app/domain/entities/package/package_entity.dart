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

  factory PackageEntity.fromJson(Map<String, dynamic> json) => PackageEntity(
        objects: (json['objetos'] as List<dynamic>)
            .map((e) => ObjectEntity.fromJson(e))
            .toList(),
        amount: json['quantidade'],
        result: json['resultado'],
        version: json['versao'],
      );

  Map<String, dynamic> toJson() => {
        'objetos': objects.map((e) => e.toJson()).toList(),
        'quantidade': amount,
        'resultado': result,
        'versao': version,
      };

  @override
  List<Object> get props => [objects, amount, result, version];
}
