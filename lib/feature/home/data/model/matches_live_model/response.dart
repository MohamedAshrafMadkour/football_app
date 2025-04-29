import 'package:equatable/equatable.dart';

import 'event.dart';
import 'fixture.dart';
import 'goals.dart';
import 'league.dart';
import 'score.dart';
import 'teams.dart';

class Response extends Equatable {
  final Fixture? fixture;
  final League? league;
  final Teams? teams;
  final Goals? goals;
  final Score? score;
  final List<Event>? events;

  const Response({
    this.fixture,
    this.league,
    this.teams,
    this.goals,
    this.score,
    this.events,
  });

  factory Response.fromJson(Map<String, dynamic> json) => Response(
    fixture:
        json['fixture'] == null
            ? null
            : Fixture.fromJson(json['fixture'] as Map<String, dynamic>),
    league:
        json['league'] == null
            ? null
            : League.fromJson(json['league'] as Map<String, dynamic>),
    teams:
        json['teams'] == null
            ? null
            : Teams.fromJson(json['teams'] as Map<String, dynamic>),
    goals:
        json['goals'] == null
            ? null
            : Goals.fromJson(json['goals'] as Map<String, dynamic>),
    score:
        json['score'] == null
            ? null
            : Score.fromJson(json['score'] as Map<String, dynamic>),
    events:
        (json['events'] as List<dynamic>?)
            ?.map((e) => Event.fromJson(e as Map<String, dynamic>))
            .toList(),
  );

  Map<String, dynamic> toJson() => {
    'fixture': fixture?.toJson(),
    'league': league?.toJson(),
    'teams': teams?.toJson(),
    'goals': goals?.toJson(),
    'score': score?.toJson(),
    'events': events?.map((e) => e.toJson()).toList(),
  };

  @override
  List<Object?> get props {
    return [fixture, league, teams, goals, score, events];
  }
}
