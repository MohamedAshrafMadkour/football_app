import 'package:equatable/equatable.dart';
import 'package:football_scoore_app/feature/home/data/model/live_match/goal.dart';
import 'package:football_scoore_app/feature/home/data/model/live_match/team.dart';
import 'package:football_scoore_app/feature/home/data/model/matches_completed/fixture.dart';

class LiveMatch extends Equatable {
  final Fixture fixture;
  final Team home;
  final Team away;
  final Goal goal;

  const LiveMatch({
    required this.fixture,
    required this.home,
    required this.away,
    required this.goal,
  });

  factory LiveMatch.fromJson(Map<String, dynamic> json) {
    return LiveMatch(
      fixture: Fixture.fromJson(json['fixture']),
      home: Team.fromJson(json['teams']['home']),
      away: Team.fromJson(json['teams']['away']),
      goal: Goal.fromJson(json['goals']),
    );
  }

  @override
  List<Object?> get props => [fixture, home, away, goal];
}
