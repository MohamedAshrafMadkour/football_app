import 'package:equatable/equatable.dart';

class Periods extends Equatable {
  final int? first;
  final dynamic second;

  const Periods({this.first, this.second});

  factory Periods.fromJson(Map<String, dynamic> json) =>
      Periods(first: json['first'] as int?, second: json['second'] as dynamic);

  Map<String, dynamic> toJson() => {'first': first, 'second': second};

  @override
  List<Object?> get props => [first, second];
}
