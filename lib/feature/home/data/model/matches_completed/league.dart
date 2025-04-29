import 'package:equatable/equatable.dart';

class League extends Equatable {
  final int? id;
  final String? name;
  final String? country;
  final String? logo;
  final String? flag;
  final int? season;
  final String? round;
  final bool? standings;

  const League({
    this.id,
    this.name,
    this.country,
    this.logo,
    this.flag,
    this.season,
    this.round,
    this.standings,
  });

  factory League.fromJson(Map<String, dynamic> json) => League(
    id: json['id'] as int?,
    name: json['name'] as String?,
    country: json['country'] as String?,
    logo: json['logo'] as String?,
    flag: json['flag'] as String?,
    season: json['season'] as int?,
    round: json['round'] as String?,
    standings: json['standings'] as bool?,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'country': country,
    'logo': logo,
    'flag': flag,
    'season': season,
    'round': round,
    'standings': standings,
  };

  @override
  List<Object?> get props {
    return [id, name, country, logo, flag, season, round, standings];
  }
}
