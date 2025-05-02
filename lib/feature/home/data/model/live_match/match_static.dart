import 'package:equatable/equatable.dart';

class MatchStatistic extends Equatable {
  final String type;
  final dynamic value;

  const MatchStatistic({required this.type, required this.value});

  factory MatchStatistic.fromJson(Map<String, dynamic> json) {
    return MatchStatistic(type: json['type'] ?? '', value: json['value']);
  }

  @override
  List<Object?> get props => [type, value];
}
