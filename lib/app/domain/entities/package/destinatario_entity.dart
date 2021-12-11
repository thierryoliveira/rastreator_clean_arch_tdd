import 'package:equatable/equatable.dart';

class RecipientEntity extends Equatable {
  final String cep;

  const RecipientEntity({required this.cep});

  factory RecipientEntity.fromJson(Map<String, dynamic> json) =>
      RecipientEntity(
        cep: json['cep'],
      );

  Map<String, dynamic> toJson() => {
        'cep': cep,
      };

  @override
  List<Object> get props => [cep];
}
