import 'package:equatable/equatable.dart';

import 'endereco_entity.dart';

class UnityEntity extends Equatable {
  final AddressEntity? address;
  final String type;

  const UnityEntity({this.address, required this.type});

  factory UnityEntity.fromJson(Map<String, dynamic> json) => UnityEntity(
        address: json['endereco'] == null
            ? null
            : AddressEntity.fromJson(json['endereco']),
        type: json['tipo'],
      );

  Map<String, dynamic> toJson() => {
        'endereco': address?.toJson(),
        'tipo': type,
      };

  @override
  List<Object?> get props => [address, type];
}
