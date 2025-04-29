import 'package:equatable/equatable.dart';

class Halftime extends Equatable {
  final int? home;
  final int? away;

  const Halftime({this.home, this.away});

  factory Halftime.fromJson(Map<String, dynamic> json) =>
      Halftime(home: json['home'] as int?, away: json['away'] as int?);

  Map<String, dynamic> toJson() => {'home': home, 'away': away};

  @override
  List<Object?> get props => [home, away];
}
