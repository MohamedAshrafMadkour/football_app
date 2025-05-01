import 'package:equatable/equatable.dart';

class Fixture extends Equatable {
  final int id;
  final String date;

  const Fixture({required this.id, required this.date});

  factory Fixture.fromJson(Map<String, dynamic> json) {
    return Fixture(id: json['id'] ?? 0, date: json['date'] ?? '');
  }

  @override
  List<Object?> get props => [id, date];
}
