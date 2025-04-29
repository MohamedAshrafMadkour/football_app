import 'package:equatable/equatable.dart';

import 'assist.dart';
import 'player.dart';
import 'team.dart';
import 'time.dart';

class Event extends Equatable {
  final Time? time;
  final Team? team;
  final Player? player;
  final Assist? assist;
  final String? type;
  final String? detail;
  final dynamic comments;

  const Event({
    this.time,
    this.team,
    this.player,
    this.assist,
    this.type,
    this.detail,
    this.comments,
  });

  factory Event.fromJson(Map<String, dynamic> json) => Event(
    time:
        json['time'] == null
            ? null
            : Time.fromJson(json['time'] as Map<String, dynamic>),
    team:
        json['team'] == null
            ? null
            : Team.fromJson(json['team'] as Map<String, dynamic>),
    player:
        json['player'] == null
            ? null
            : Player.fromJson(json['player'] as Map<String, dynamic>),
    assist:
        json['assist'] == null
            ? null
            : Assist.fromJson(json['assist'] as Map<String, dynamic>),
    type: json['type'] as String?,
    detail: json['detail'] as String?,
    comments: json['comments'] as dynamic,
  );

  Map<String, dynamic> toJson() => {
    'time': time?.toJson(),
    'team': team?.toJson(),
    'player': player?.toJson(),
    'assist': assist?.toJson(),
    'type': type,
    'detail': detail,
    'comments': comments,
  };

  @override
  List<Object?> get props {
    return [time, team, player, assist, type, detail, comments];
  }
}
