import 'package:equatable/equatable.dart';

class Assist extends Equatable {
  final dynamic id;
  final dynamic name;

  const Assist({this.id, this.name});

  factory Assist.fromJson(Map<String, dynamic> json) =>
      Assist(id: json['id'] as dynamic, name: json['name'] as dynamic);

  Map<String, dynamic> toJson() => {'id': id, 'name': name};

  @override
  List<Object?> get props => [id, name];
}
