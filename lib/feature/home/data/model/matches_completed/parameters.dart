import 'package:equatable/equatable.dart';

class Parameters extends Equatable {
  final String? league;
  final String? season;
  final String? from;
  final String? to;
  final String? timezone;

  const Parameters({
    this.league,
    this.season,
    this.from,
    this.to,
    this.timezone,
  });

  factory Parameters.fromJson(Map<String, dynamic> json) => Parameters(
    league: json['league'] as String?,
    season: json['season'] as String?,
    from: json['from'] as String?,
    to: json['to'] as String?,
    timezone: json['timezone'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'league': league,
    'season': season,
    'from': from,
    'to': to,
    'timezone': timezone,
  };

  @override
  List<Object?> get props => [league, season, from, to, timezone];
}
