import 'package:equatable/equatable.dart';

class EnderecoEntity extends Equatable {
  final String cidade;
  final String uf;

  const EnderecoEntity({required this.cidade, required this.uf});

  factory EnderecoEntity.fromJson(Map<String, dynamic> json) => EnderecoEntity(
        cidade: json['cidade'],
        uf: json['uf'],
      );

  Map<String, dynamic> toJson() => {
        'cidade': cidade,
        'uf': uf,
      };

  @override
  List<Object> get props => [cidade, uf];
}
