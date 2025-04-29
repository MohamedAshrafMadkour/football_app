import 'package:equatable/equatable.dart';

class Goals extends Equatable {
  final int? home;
  final int? away;

  const Goals({this.home, this.away});

  factory Goals.fromJson(Map<String, dynamic> json) =>
      Goals(home: json['home'] as int?, away: json['away'] as int?);

  Map<String, dynamic> toJson() => {'home': home, 'away': away};

  @override
  List<Object?> get props => [home, away];
}
