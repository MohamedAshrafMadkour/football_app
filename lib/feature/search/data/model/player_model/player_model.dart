import 'package:equatable/equatable.dart';

class PlayerModel extends Equatable {
  final String? idPlayer;
  final String? idTeam;
  final String? strPlayer;
  final String? strTeam;
  final String? strSport;
  final String? strThumb;
  final String? strCutout;
  final String? strNationality;
  final String? dateBorn;
  final String? strStatus;
  final String? strGender;
  final String? strPosition;
  final String? relevance;

  const PlayerModel({
    this.idPlayer,
    this.idTeam,
    this.strPlayer,
    this.strTeam,
    this.strSport,
    this.strThumb,
    this.strCutout,
    this.strNationality,
    this.dateBorn,
    this.strStatus,
    this.strGender,
    this.strPosition,
    this.relevance,
  });

  factory PlayerModel.fromJson(Map<String, dynamic> json) => PlayerModel(
    idPlayer: json['idPlayer'] as String?,
    idTeam: json['idTeam'] as String?,
    strPlayer: json['strPlayer'] as String?,
    strTeam: json['strTeam'] as String?,
    strSport: json['strSport'] as String?,
    strThumb: json['strThumb'] as String?,
    strCutout: json['strCutout'] as String?,
    strNationality: json['strNationality'] as String?,
    dateBorn: json['dateBorn'] as String?,
    strStatus: json['strStatus'] as String?,
    strGender: json['strGender'] as String?,
    strPosition: json['strPosition'] as String?,
    relevance: json['relevance'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'idPlayer': idPlayer,
    'idTeam': idTeam,
    'strPlayer': strPlayer,
    'strTeam': strTeam,
    'strSport': strSport,
    'strThumb': strThumb,
    'strCutout': strCutout,
    'strNationality': strNationality,
    'dateBorn': dateBorn,
    'strStatus': strStatus,
    'strGender': strGender,
    'strPosition': strPosition,
    'relevance': relevance,
  };

  @override
  List<Object?> get props {
    return [
      idPlayer,
      idTeam,
      strPlayer,
      strTeam,
      strSport,
      strThumb,
      strCutout,
      strNationality,
      dateBorn,
      strStatus,
      strGender,
      strPosition,
      relevance,
    ];
  }
}
