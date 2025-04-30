import 'package:equatable/equatable.dart';
import 'package:football_scoore_app/feature/home/data/model/matches_completed/status.dart';

class Fixture extends Equatable {
  final int id;
  final String date;
  final Status status;

  const Fixture({required this.id, required this.date, required this.status});

  factory Fixture.fromJson(Map<String, dynamic> json) {
    return Fixture(
      id: json['id'] ?? 0,
      date: json['date'] ?? '',
      status: Status.fromJson(json['status'] ?? {}),
    );
  }

  @override
  List<Object?> get props => [id, date, status];
}
