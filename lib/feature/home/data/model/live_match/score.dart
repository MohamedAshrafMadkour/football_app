import 'package:equatable/equatable.dart';
import 'package:football_scoore_app/feature/home/data/model/live_match/goal.dart';
import 'package:football_scoore_app/feature/home/data/model/live_match/league.dart';
import 'package:football_scoore_app/feature/home/data/model/live_match/status.dart';
import 'package:football_scoore_app/feature/home/data/model/live_match/team.dart';

class LiveMatch extends Equatable {
  final LeagueLive league;
  final Team home;
  final Team away;
  final Status status;
  final Goal goal;

  const LiveMatch({
    required this.status,
    required this.home,
    required this.away,
    required this.goal,
    required this.league,
  });

  factory LiveMatch.fromJson(Map<String, dynamic> json) {
    return LiveMatch(
      league: LeagueLive.fromJson(json['league']),
      status: Status.fromJson(json['fixture']['status']),
      home: Team.fromJson(json['teams']['home']),
      away: Team.fromJson(json['teams']['away']),
      goal: Goal.fromJson(json['goals']),
    );
  }

  @override
  List<Object?> get props => [home, away, goal, status, league];
}
