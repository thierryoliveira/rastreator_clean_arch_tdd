import 'package:rastreator/app/domain/entities/package/package_entity.dart';

import 'object_model.dart';

class PackageModel extends PackageEntity {
  final List<ObjectModel> objects;
  final int amount;
  final String result;
  final String version;

  PackageModel({
    required this.objects,
    required this.amount,
    required this.result,
    required this.version,
  }) : super(
            objects: objects, amount: amount, result: result, version: version);

  factory PackageModel.fromJson(Map<String, dynamic> json) => PackageModel(
        objects: (json['objetos'] as List<dynamic>)
            .map((e) => ObjectModel.fromJson(e))
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
}
