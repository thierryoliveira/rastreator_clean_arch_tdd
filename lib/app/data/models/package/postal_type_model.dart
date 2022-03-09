import 'package:rastreator/app/domain/entities/package/postal_type_entity.dart';

class PostalTypeModel extends PostalTypeEntity {
  final String category;
  final String description;
  final String initials;

  const PostalTypeModel(
      {required this.category,
      required this.description,
      required this.initials})
      : super(category: category, description: description, initials: initials);

  factory PostalTypeModel.fromJson(Map<String, dynamic> json) =>
      PostalTypeModel(
        category: json['categoria'],
        description: json['descricao'],
        initials: json['sigla'],
      );

  Map<String, dynamic> toJson() => {
        'categoria': category,
        'descricao': description,
        'sigla': initials,
      };
}
