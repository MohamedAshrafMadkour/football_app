import 'package:equatable/equatable.dart';

class Extratime extends Equatable {
  final dynamic home;
  final dynamic away;

  const Extratime({this.home, this.away});

  factory Extratime.fromJson(Map<String, dynamic> json) =>
      Extratime(home: json['home'] as dynamic, away: json['away'] as dynamic);

  Map<String, dynamic> toJson() => {'home': home, 'away': away};

  @override
  List<Object?> get props => [home, away];
}
