import 'package:equatable/equatable.dart';

import 'destinatario_entity.dart';
import 'unidade_entity.dart';
import 'unidade_destino_entity.dart';

class EventoEntity extends Equatable {
  final String codigo;
  final String descricao;
  final DateTime? dtHrCriado;
  final String tipo;
  final UnidadeEntity unidade;
  final UnidadeDestinoEntity? unidadeDestino;
  final DestinatarioEntity? destinatario;

  const EventoEntity({
    required this.codigo,
    required this.descricao,
    this.dtHrCriado,
    required this.tipo,
    required this.unidade,
    this.unidadeDestino,
    this.destinatario,
  });

  factory EventoEntity.fromJson(Map<String, dynamic> json) => EventoEntity(
        codigo: json['codigo'],
        descricao: json['descricao'],
        dtHrCriado: json['dtHrCriado'] == null
            ? null
            : DateTime.parse(json['dtHrCriado']),
        tipo: json['tipo'],
        unidade: UnidadeEntity.fromJson(json['unidade']),
        unidadeDestino: json['unidadeDestino'] == null
            ? null
            : UnidadeDestinoEntity.fromJson(
                json['unidadeDestino'] as Map<String, dynamic>),
        destinatario: json['destinatario'] == null
            ? null
            : DestinatarioEntity.fromJson(
                json['destinatario'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'codigo': codigo,
        'descricao': descricao,
        'dtHrCriado': dtHrCriado?.toIso8601String(),
        'tipo': tipo,
        'unidade': unidade.toJson(),
        'unidadeDestino': unidadeDestino?.toJson(),
        'destinatario': destinatario?.toJson(),
      };

  @override
  List<Object?> get props {
    return [
      codigo,
      descricao,
      dtHrCriado,
      tipo,
      unidade,
      unidadeDestino,
      destinatario,
    ];
  }
}
