import 'package:equatable/equatable.dart';
import 'package:football_scoore_app/feature/home/data/model/live_match/match_static.dart';

class TeamStatistics extends Equatable {
  final String teamName;
  final String teamLogo;
  final List<MatchStatistic> statistics;

  const TeamStatistics({
    required this.teamName,
    required this.teamLogo,
    required this.statistics,
  });

  factory TeamStatistics.fromJson(Map<String, dynamic> json) {
    return TeamStatistics(
      teamName: json['team']['name'] ?? '',
      teamLogo: json['team']['logo'] ?? '',
      statistics:
          (json['statistics'] as List)
              .map((e) => MatchStatistic.fromJson(e))
              .toList(),
    );
  }

  @override
  List<Object?> get props => [teamName, teamLogo, statistics];
}
