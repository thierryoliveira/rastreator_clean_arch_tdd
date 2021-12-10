import 'package:equatable/equatable.dart';

import 'evento_entity.dart';
import 'tipo_postal_entity.dart';

class ObjetoEntity extends Equatable {
  final String codObjeto;
  final List<EventoEntity> eventos;
  final String modalidade;
  final TipoPostalEntity tipoPostal;
  final bool habilitaAutoDeclaracao;
  final bool permiteEncargoImportacao;
  final bool habilitaPercorridaCarteiro;
  final bool bloqueioObjeto;
  final bool possuiLocker;
  final bool habilitaLocker;
  final bool habilitaCrowdshipping;

  const ObjetoEntity({
    required this.codObjeto,
    required this.eventos,
    required this.modalidade,
    required this.tipoPostal,
    required this.habilitaAutoDeclaracao,
    required this.permiteEncargoImportacao,
    required this.habilitaPercorridaCarteiro,
    required this.bloqueioObjeto,
    required this.possuiLocker,
    required this.habilitaLocker,
    required this.habilitaCrowdshipping,
  });

  factory ObjetoEntity.fromJson(Map<String, dynamic> json) => ObjetoEntity(
        codObjeto: json['codObjeto'],
        eventos:
            (json['eventos'])?.map((e) => EventoEntity.fromJson(e)).toList(),
        modalidade: json['modalidade'],
        tipoPostal: TipoPostalEntity.fromJson(json['tipoPostal']),
        habilitaAutoDeclaracao: json['habilitaAutoDeclaracao'],
        permiteEncargoImportacao: json['permiteEncargoImportacao'],
        habilitaPercorridaCarteiro: json['habilitaPercorridaCarteiro'],
        bloqueioObjeto: json['bloqueioObjeto'],
        possuiLocker: json['possuiLocker'],
        habilitaLocker: json['habilitaLocker'],
        habilitaCrowdshipping: json['habilitaCrowdshipping'],
      );

  Map<String, dynamic> toJson() => {
        'codObjeto': codObjeto,
        'eventos': eventos.map((e) => e.toJson()).toList(),
        'modalidade': modalidade,
        'tipoPostal': tipoPostal.toJson(),
        'habilitaAutoDeclaracao': habilitaAutoDeclaracao,
        'permiteEncargoImportacao': permiteEncargoImportacao,
        'habilitaPercorridaCarteiro': habilitaPercorridaCarteiro,
        'bloqueioObjeto': bloqueioObjeto,
        'possuiLocker': possuiLocker,
        'habilitaLocker': habilitaLocker,
        'habilitaCrowdshipping': habilitaCrowdshipping,
      };

  @override
  List<Object> get props {
    return [
      codObjeto,
      eventos,
      modalidade,
      tipoPostal,
      habilitaAutoDeclaracao,
      permiteEncargoImportacao,
      habilitaPercorridaCarteiro,
      bloqueioObjeto,
      possuiLocker,
      habilitaLocker,
      habilitaCrowdshipping,
    ];
  }
}
