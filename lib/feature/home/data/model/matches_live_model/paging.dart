import 'package:equatable/equatable.dart';

class Paging extends Equatable {
  final int? current;
  final int? total;

  const Paging({this.current, this.total});

  factory Paging.fromJson(Map<String, dynamic> json) =>
      Paging(current: json['current'] as int?, total: json['total'] as int?);

  Map<String, dynamic> toJson() => {'current': current, 'total': total};

  @override
  List<Object?> get props => [current, total];
}
