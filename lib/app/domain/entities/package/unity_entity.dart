import 'package:equatable/equatable.dart';

import 'address_entity.dart';

class UnityEntity extends Equatable {
  final AddressEntity? address;
  final String type;

  const UnityEntity({this.address, required this.type});

  @override
  List<Object?> get props => [address, type];
}
