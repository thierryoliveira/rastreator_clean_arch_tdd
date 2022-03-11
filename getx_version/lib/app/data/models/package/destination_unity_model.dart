import 'package:rastreator/app/data/models/package/address_model.dart';
import 'package:rastreator/app/domain/entities/package/destination_unity_entity.dart';

class DestinationUnityModel extends DestinationUnityEntity {
  final String? codSro;
  final AddressModel address;
  final String? name;
  final String type;

  const DestinationUnityModel(
      {this.codSro, required this.address, this.name, required this.type})
      : super(codSro: codSro, address: address, name: name, type: type);

  factory DestinationUnityModel.fromJson(Map<String, dynamic> json) {
    return DestinationUnityModel(
      codSro: json['codSro'] ?? null,
      address: AddressModel.fromJson(json['endereco'] as Map<String, dynamic>),
      name: json['nome'] ?? null,
      type: json['tipo'],
    );
  }

  Map<String, dynamic> toJson() => {
        'codSro': codSro,
        'endereco': address.toJson(),
        'nome': name,
        'tipo': type,
      };
}
