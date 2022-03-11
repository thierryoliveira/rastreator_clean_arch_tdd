import 'package:rastreator/app/domain/entities/package/recipient_entity.dart';

class RecipientModel extends RecipientEntity {
  final String cep;

  const RecipientModel({required this.cep}) : super(cep: cep);

  factory RecipientModel.fromJson(Map<String, dynamic> json) => RecipientModel(
        cep: json['cep'],
      );

  Map<String, dynamic> toJson() => {
        'cep': cep,
      };
}
