import 'package:equatable/equatable.dart';
import 'destinatario_entity.dart';
import 'unidade_entity.dart';
import 'unidade_destino_entity.dart';

class EventEntity extends Equatable {
  final String id;
  final String description;
  final DateTime? dtHrCreated;
  final String type;
  final UnityEntity unity;
  final DestinationUnityEntity? destinationUnity;
  final RecipientEntity? recipient;

  const EventEntity({
    required this.id,
    required this.description,
    this.dtHrCreated,
    required this.type,
    required this.unity,
    this.destinationUnity,
    this.recipient,
  });

  factory EventEntity.fromJson(Map<String, dynamic> json) => EventEntity(
        id: json['codigo'],
        description: json['descricao'],
        dtHrCreated: json['dtHrCriado'] == null
            ? null
            : DateTime.parse(json['dtHrCreated']),
        type: json['tipo'],
        unity: UnityEntity.fromJson(json['unidade']),
        destinationUnity: json['unidadeDestino'] == null
            ? null
            : DestinationUnityEntity.fromJson(
                json['unidadeDestino'] as Map<String, dynamic>),
        recipient: json['destinatario'] == null
            ? null
            : RecipientEntity.fromJson(
                json['destinatario'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'codigo': id,
        'descricao': description,
        'dtHrCriado': dtHrCreated?.toIso8601String(),
        'tipo': type,
        'unidade': unity.toJson(),
        'unidadeDestino': destinationUnity?.toJson(),
        'destinatario': recipient?.toJson(),
      };

  @override
  List<Object?> get props {
    return [
      id,
      description,
      dtHrCreated,
      type,
      unity,
      destinationUnity,
      recipient,
    ];
  }
}
