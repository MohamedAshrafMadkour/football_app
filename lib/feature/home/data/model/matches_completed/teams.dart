import 'package:equatable/equatable.dart';

import 'away.dart';
import 'home.dart';

class Teams extends Equatable {
  final Home? home;
  final Away? away;

  const Teams({this.home, this.away});

  factory Teams.fromJson(Map<String, dynamic> json) => Teams(
    home:
        json['home'] == null
            ? null
            : Home.fromJson(json['home'] as Map<String, dynamic>),
    away:
        json['away'] == null
            ? null
            : Away.fromJson(json['away'] as Map<String, dynamic>),
  );

  Map<String, dynamic> toJson() => {
    'home': home?.toJson(),
    'away': away?.toJson(),
  };

  @override
  List<Object?> get props => [home, away];
}
