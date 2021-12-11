import 'package:rastreator/app/domain/entities/package/unity_entity.dart';

import 'address_model.dart';

class UnityModel extends UnityEntity {
  final AddressModel? address;
  final String type;

  const UnityModel({this.address, required this.type})
      : super(address: address, type: type);

  factory UnityModel.fromJson(Map<String, dynamic> json) => UnityModel(
        address: json['endereco'] == null
            ? null
            : AddressModel.fromJson(json['endereco']),
        type: json['tipo'],
      );

  Map<String, dynamic> toJson() => {
        'endereco': address?.toJson(),
        'tipo': type,
      };
}
