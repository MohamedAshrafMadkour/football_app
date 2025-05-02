import 'package:equatable/equatable.dart';
import 'package:football_scoore_app/feature/home/data/model/live_match/goal.dart';
import 'package:football_scoore_app/feature/home/data/model/live_match/team.dart';

class MatchEvent extends Equatable {
  final int time;
  final String team;
  final String player;
  final String type;
  final String detail;
  final Team home;
  final Team away;
  final Goal goal;

  const MatchEvent({
    required this.goal,
    required this.home,
    required this.away,
    required this.time,
    required this.team,
    required this.player,
    required this.type,
    required this.detail,
  });

  factory MatchEvent.fromJson(Map<String, dynamic> json) {
    return MatchEvent(
      goal: json['goals'] != null ? Goal.fromJson(json['goals']) : Goal.empty(),
      home:
          json['teams']?['home'] != null
              ? Team.fromJson(json['teams']['home'])
              : Team.empty(),
      away:
          json['teams']?['away'] != null
              ? Team.fromJson(json['teams']['away'])
              : Team.empty(),
      time: json['time']?['elapsed'] ?? 0,
      team: json['team']?['name'] ?? '',
      player: json['player']?['name'] ?? '',
      type: json['type'] ?? '',
      detail: json['detail'] ?? '',
    );
  }

  @override
  List<Object> get props => [time, team, player, type, detail];
}
