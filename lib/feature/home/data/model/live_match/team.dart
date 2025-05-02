import 'package:equatable/equatable.dart';

class Team extends Equatable {
  final int id;
  final String name;
  final String logoUrl;
  final bool winner;

  const Team({
    required this.id,
    required this.name,
    required this.logoUrl,
    required this.winner,
  });

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      logoUrl: json['logo'] ?? '',
      winner: json['winner'] ?? false,
    );
  }

  factory Team.empty() {
    return const Team(id: 0, name: '', logoUrl: '', winner: false);
  }

  @override
  List<Object?> get props => [id, name, logoUrl, winner];
}
