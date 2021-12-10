import 'package:equatable/equatable.dart';

class DestinatarioEntity extends Equatable {
  final String cep;

  const DestinatarioEntity({required this.cep});

  factory DestinatarioEntity.fromJson(Map<String, dynamic> json) =>
      DestinatarioEntity(
        cep: json['cep'],
      );

  Map<String, dynamic> toJson() => {
        'cep': cep,
      };

  @override
  List<Object> get props => [cep];
}
