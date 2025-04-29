import 'package:equatable/equatable.dart';

class Parameters extends Equatable {
  final String? season;
  final String? status;
  final String? league;

  const Parameters({this.season, this.status, this.league});

  factory Parameters.fromJson(Map<String, dynamic> json) => Parameters(
    season: json['season'] as String?,
    status: json['status'] as String?,
    league: json['league'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'season': season,
    'status': status,
    'league': league,
  };

  @override
  List<Object?> get props => [season, status, league];
}
