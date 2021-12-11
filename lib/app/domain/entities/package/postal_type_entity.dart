import 'package:equatable/equatable.dart';

class PostalTypeEntity extends Equatable {
  final String category;
  final String description;
  final String initials;

  const PostalTypeEntity(
      {required this.category,
      required this.description,
      required this.initials});

  factory PostalTypeEntity.fromJson(Map<String, dynamic> json) =>
      PostalTypeEntity(
        category: json['categoria'],
        description: json['descricao'],
        initials: json['sigla'],
      );

  Map<String, dynamic> toJson() => {
        'categoria': category,
        'descricao': description,
        'sigla': initials,
      };

  @override
  List<Object> get props => [category, description, initials];
}
