import 'package:equatable/equatable.dart';

class Penalty extends Equatable {
  final dynamic home;
  final dynamic away;

  const Penalty({this.home, this.away});

  factory Penalty.fromJson(Map<String, dynamic> json) =>
      Penalty(home: json['home'] as dynamic, away: json['away'] as dynamic);

  Map<String, dynamic> toJson() => {'home': home, 'away': away};

  @override
  List<Object?> get props => [home, away];
}
