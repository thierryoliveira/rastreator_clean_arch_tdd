import 'package:equatable/equatable.dart';

import 'objeto_entity.dart';

class PackageEntity extends Equatable {
  final List<ObjetoEntity> objetos;
  final int quantidade;
  final String resultado;
  final String versao;

  const PackageEntity({
    required this.objetos,
    required this.quantidade,
    required this.resultado,
    required this.versao,
  });

  factory PackageEntity.fromJson(Map<String, dynamic> json) => PackageEntity(
        objetos: (json['objetos'] as List<dynamic>)
            .map((e) => ObjetoEntity.fromJson(e))
            .toList(),
        quantidade: json['quantidade'],
        resultado: json['resultado'],
        versao: json['versao'],
      );

  Map<String, dynamic> toJson() => {
        'objetos': objetos.map((e) => e.toJson()).toList(),
        'quantidade': quantidade,
        'resultado': resultado,
        'versao': versao,
      };

  @override
  List<Object> get props => [objetos, quantidade, resultado, versao];
}
