import 'package:equatable/equatable.dart';

class PostalTypeEntity extends Equatable {
  final String category;
  final String description;
  final String initials;

  const PostalTypeEntity(
      {required this.category,
      required this.description,
      required this.initials});

  @override
  List<Object> get props => [category, description, initials];
}
