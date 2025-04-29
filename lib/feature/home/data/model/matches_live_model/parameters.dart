import 'package:equatable/equatable.dart';

class Parameters extends Equatable {
  final String? live;

  const Parameters({this.live});

  factory Parameters.fromJson(Map<String, dynamic> json) =>
      Parameters(live: json['live'] as String?);

  Map<String, dynamic> toJson() => {'live': live};

  @override
  List<Object?> get props => [live];
}
