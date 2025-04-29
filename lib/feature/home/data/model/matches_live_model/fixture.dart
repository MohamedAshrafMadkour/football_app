import 'package:equatable/equatable.dart';

import 'periods.dart';
import 'status.dart';
import 'venue.dart';

class Fixture extends Equatable {
  final int? id;
  final dynamic referee;
  final String? timezone;
  final String? date;
  final int? timestamp;
  final Periods? periods;
  final Venue? venue;
  final Status? status;

  const Fixture({
    this.id,
    this.referee,
    this.timezone,
    this.date,
    this.timestamp,
    this.periods,
    this.venue,
    this.status,
  });

  factory Fixture.fromJson(Map<String, dynamic> json) => Fixture(
    id: json['id'] as int?,
    referee: json['referee'] as dynamic,
    timezone: json['timezone'] as String?,
    date: json['date'] as String?,
    timestamp: json['timestamp'] as int?,
    periods:
        json['periods'] == null
            ? null
            : Periods.fromJson(json['periods'] as Map<String, dynamic>),
    venue:
        json['venue'] == null
            ? null
            : Venue.fromJson(json['venue'] as Map<String, dynamic>),
    status:
        json['status'] == null
            ? null
            : Status.fromJson(json['status'] as Map<String, dynamic>),
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'referee': referee,
    'timezone': timezone,
    'date': date,
    'timestamp': timestamp,
    'periods': periods?.toJson(),
    'venue': venue?.toJson(),
    'status': status?.toJson(),
  };

  @override
  List<Object?> get props {
    return [id, referee, timezone, date, timestamp, periods, venue, status];
  }
}
