import 'package:equatable/equatable.dart';

import 'endereco_entity.dart';

class UnidadeEntity extends Equatable {
  final EnderecoEntity? endereco;
  final String tipo;

  const UnidadeEntity({this.endereco, required this.tipo});

  factory UnidadeEntity.fromJson(Map<String, dynamic> json) => UnidadeEntity(
        endereco: json['endereco'] == null
            ? null
            : EnderecoEntity.fromJson(json['endereco']),
        tipo: json['tipo'],
      );

  Map<String, dynamic> toJson() => {
        'endereco': endereco?.toJson(),
        'tipo': tipo,
      };

  @override
  List<Object?> get props => [endereco, tipo];
}
