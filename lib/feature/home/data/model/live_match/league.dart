import 'package:equatable/equatable.dart';

class LeagueLive extends Equatable {
  final String name;
  final String logo;
  final String country;

  factory LeagueLive.fromJson(Map<String, dynamic> json) {
    return LeagueLive(
      country: json['country'] ?? " ",
      name: json['name'] ?? 'anonymous league',
      logo: json['logo'] ?? "anonymous country",
    );
  }

  const LeagueLive({
    required this.name,
    required this.logo,
    required this.country,
  });

  @override
  List<Object?> get props => [name, logo];
}
