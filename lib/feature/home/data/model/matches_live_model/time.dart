import 'package:equatable/equatable.dart';

class Time extends Equatable {
  final int? elapsed;
  final dynamic extra;

  const Time({this.elapsed, this.extra});

  factory Time.fromJson(Map<String, dynamic> json) =>
      Time(elapsed: json['elapsed'] as int?, extra: json['extra'] as dynamic);

  Map<String, dynamic> toJson() => {'elapsed': elapsed, 'extra': extra};

  @override
  List<Object?> get props => [elapsed, extra];
}
