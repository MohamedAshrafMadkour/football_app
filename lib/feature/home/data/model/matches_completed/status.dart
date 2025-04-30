import 'package:equatable/equatable.dart';

class Status extends Equatable {
  final String? long;
  final String? short;
  final dynamic elapsed;
  final dynamic extra;

  const Status({this.long, this.short, this.elapsed, this.extra});

  factory Status.fromJson(Map<String, dynamic> json) => Status(
    long: json['long'] as String?,
    short: json['short'] as String?,
    elapsed: json['elapsed'] as dynamic,
    extra: json['extra'] as dynamic,
  );

  Map<String, dynamic> toJson() => {
    'long': long,
    'short': short,
    'elapsed': elapsed,
    'extra': extra,
  };

  @override
  List<Object?> get props => [long, short, elapsed, extra];
}
