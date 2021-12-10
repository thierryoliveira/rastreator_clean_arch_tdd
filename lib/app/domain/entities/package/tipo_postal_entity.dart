import 'package:equatable/equatable.dart';

class TipoPostalEntity extends Equatable {
  final String categoria;
  final String descricao;
  final String sigla;

  const TipoPostalEntity(
      {required this.categoria, required this.descricao, required this.sigla});

  factory TipoPostalEntity.fromJson(Map<String, dynamic> json) =>
      TipoPostalEntity(
        categoria: json['categoria'],
        descricao: json['descricao'],
        sigla: json['sigla'],
      );

  Map<String, dynamic> toJson() => {
        'categoria': categoria,
        'descricao': descricao,
        'sigla': sigla,
      };

  @override
  List<Object> get props => [categoria, descricao, sigla];
}
