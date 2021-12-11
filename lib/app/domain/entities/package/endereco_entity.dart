import 'package:equatable/equatable.dart';

class AddressEntity extends Equatable {
  final String city;
  final String fu;

  const AddressEntity({required this.city, required this.fu});

  factory AddressEntity.fromJson(Map<String, dynamic> json) => AddressEntity(
        city: json['cidade'],
        fu: json['uf'],
      );

  Map<String, dynamic> toJson() => {
        'cidade': city,
        'uf': fu,
      };

  @override
  List<Object> get props => [city, fu];
}
