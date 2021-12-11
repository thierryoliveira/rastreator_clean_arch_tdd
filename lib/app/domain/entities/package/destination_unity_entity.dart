import 'package:equatable/equatable.dart';
import 'address_entity.dart';

class DestinationUnityEntity extends Equatable {
  final String? codSro;
  final AddressEntity address;
  final String? name;
  final String type;

  const DestinationUnityEntity(
      {this.codSro, required this.address, this.name, required this.type});

  factory DestinationUnityEntity.fromJson(Map<String, dynamic> json) {
    return DestinationUnityEntity(
      codSro: json['codSro'] ?? '',
      address: AddressEntity.fromJson(json['endereco'] as Map<String, dynamic>),
      name: json['nome'] ?? '',
      type: json['tipo'],
    );
  }

  Map<String, dynamic> toJson() => {
        'codSro': codSro,
        'endereco': address.toJson(),
        'nome': name,
        'tipo': type,
      };

  @override
  List<Object?> get props => [codSro, address, name, type];
}
