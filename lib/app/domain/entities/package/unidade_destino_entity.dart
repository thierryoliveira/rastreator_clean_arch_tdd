import 'package:equatable/equatable.dart';

import 'endereco_entity.dart';

class UnidadeDestinoEntity extends Equatable {
  final String codSro;
  final EnderecoEntity endereco;
  final String nome;
  final String tipo;

  const UnidadeDestinoEntity(
      {required this.codSro,
      required this.endereco,
      required this.nome,
      required this.tipo});

  factory UnidadeDestinoEntity.fromJson(Map<String, dynamic> json) {
    return UnidadeDestinoEntity(
      codSro: json['codSro'],
      endereco:
          EnderecoEntity.fromJson(json['endereco'] as Map<String, dynamic>),
      nome: json['nome'],
      tipo: json['tipo'],
    );
  }

  Map<String, dynamic> toJson() => {
        'codSro': codSro,
        'endereco': endereco.toJson(),
        'nome': nome,
        'tipo': tipo,
      };

  @override
  List<Object> get props => [codSro, endereco, nome, tipo];
}
