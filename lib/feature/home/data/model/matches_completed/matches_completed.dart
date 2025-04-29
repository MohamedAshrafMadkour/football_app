import 'package:equatable/equatable.dart';

import 'paging.dart';
import 'parameters.dart';
import 'response.dart';

class MatchesCompleted extends Equatable {
  final String? matchesCompletedGet;
  final Parameters? parameters;
  final List<dynamic>? errors;
  final int? results;
  final Paging? paging;
  final List<Response>? response;

  const MatchesCompleted({
    this.matchesCompletedGet,
    this.parameters,
    this.errors,
    this.results,
    this.paging,
    this.response,
  });

  factory MatchesCompleted.fromJson(Map<String, dynamic> json) {
    return MatchesCompleted(
      matchesCompletedGet: json['get'] as String?,
      parameters:
          json['parameters'] == null
              ? null
              : Parameters.fromJson(json['parameters'] as Map<String, dynamic>),
      errors: json['errors'] as List<dynamic>?,
      results: json['results'] as int?,
      paging:
          json['paging'] == null
              ? null
              : Paging.fromJson(json['paging'] as Map<String, dynamic>),
      response:
          (json['response'] as List<dynamic>?)
              ?.map((e) => Response.fromJson(e as Map<String, dynamic>))
              .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
    'get': matchesCompletedGet,
    'parameters': parameters?.toJson(),
    'errors': errors,
    'results': results,
    'paging': paging?.toJson(),
    'response': response?.map((e) => e.toJson()).toList(),
  };

  @override
  List<Object?> get props {
    return [matchesCompletedGet, parameters, errors, results, paging, response];
  }
}
