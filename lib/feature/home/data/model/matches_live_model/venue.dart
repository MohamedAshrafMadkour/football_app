import 'package:equatable/equatable.dart';

class Venue extends Equatable {
  final int? id;
  final String? name;
  final String? city;

  const Venue({this.id, this.name, this.city});

  factory Venue.fromJson(Map<String, dynamic> json) => Venue(
    id: json['id'] as int?,
    name: json['name'] as String?,
    city: json['city'] as String?,
  );

  Map<String, dynamic> toJson() => {'id': id, 'name': name, 'city': city};

  @override
  List<Object?> get props => [id, name, city];
}
