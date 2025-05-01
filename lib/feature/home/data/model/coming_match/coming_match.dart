import 'package:equatable/equatable.dart';

import 'event.dart';

class ComingMatch extends Equatable {
	final List<Event>? events;

	const ComingMatch({this.events});

	factory ComingMatch.fromJson(Map<String, dynamic> json) => ComingMatch(
				events: (json['events'] as List<dynamic>?)
						?.map((e) => Event.fromJson(e as Map<String, dynamic>))
						.toList(),
			);

	Map<String, dynamic> toJson() => {
				'events': events?.map((e) => e.toJson()).toList(),
			};

	@override
	List<Object?> get props => [events];
}
