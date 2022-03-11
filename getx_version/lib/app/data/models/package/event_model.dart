import 'package:rastreator/app/data/models/package/recipient_model.dart';
import 'package:rastreator/app/data/models/package/unity_model.dart';
import 'package:rastreator/app/domain/entities/package/event_entity.dart';

import 'destination_unity_model.dart';

class EventModel extends EventEntity {
  final String id;
  final String description;
  final DateTime? dtHrCreated;
  final String type;
  final UnityModel unity;
  final DestinationUnityModel? destinationUnity;
  final RecipientModel? recipient;

  const EventModel({
    required this.id,
    required this.description,
    this.dtHrCreated,
    required this.type,
    required this.unity,
    this.destinationUnity,
    this.recipient,
  }) : super(
            id: id,
            description: description,
            dtHrCreated: dtHrCreated,
            type: type,
            unity: unity,
            destinationUnity: destinationUnity,
            recipient: recipient);

  factory EventModel.fromJson(Map<String, dynamic> json) => EventModel(
        id: json['codigo'],
        description: json['descricao'],
        dtHrCreated: json['dtHrCriado'] == null
            ? null
            : DateTime.parse(json['dtHrCriado']),
        type: json['tipo'],
        unity: UnityModel.fromJson(json['unidade']),
        destinationUnity: json['unidadeDestino'] == null
            ? null
            : DestinationUnityModel.fromJson(
                json['unidadeDestino'] as Map<String, dynamic>),
        recipient: json['destinatario'] == null
            ? null
            : RecipientModel.fromJson(
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
}
