import 'package:equatable/equatable.dart';

class Fulltime extends Equatable {
  final dynamic home;
  final dynamic away;

  const Fulltime({this.home, this.away});

  factory Fulltime.fromJson(Map<String, dynamic> json) =>
      Fulltime(home: json['home'] as dynamic, away: json['away'] as dynamic);

  Map<String, dynamic> toJson() => {'home': home, 'away': away};

  @override
  List<Object?> get props => [home, away];
}
