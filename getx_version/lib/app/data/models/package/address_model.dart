import 'package:rastreator/app/domain/entities/package/address_entity.dart';

class AddressModel extends AddressEntity {
  final String city;
  final String fu;

  const AddressModel({required this.city, required this.fu})
      : super(city: city, fu: fu);

  factory AddressModel.fromJson(Map<String, dynamic> json) => AddressModel(
        city: json['cidade'] ?? '',
        fu: json['uf'] ?? '',
      );

  Map<String, dynamic> toJson() => {
        'cidade': city,
        'uf': fu,
      };
}
