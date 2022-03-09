import 'package:equatable/equatable.dart';
import 'recipient_entity.dart';
import 'unity_entity.dart';
import 'destination_unity_entity.dart';

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
