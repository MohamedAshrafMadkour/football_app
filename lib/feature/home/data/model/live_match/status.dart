import 'package:equatable/equatable.dart';

class Status extends Equatable {
  final int elapsedTime;
  final String long;

  const Status({required this.elapsedTime, required this.long});

  factory Status.fromJson(Map<String, dynamic> json) {
    return Status(elapsedTime: json['elapsed'] ?? 0, long: json['long'] ?? '');
  }

  @override
  List<Object?> get props => [elapsedTime, long];
}
