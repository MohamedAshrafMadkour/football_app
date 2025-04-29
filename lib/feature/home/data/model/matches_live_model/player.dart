import 'package:equatable/equatable.dart';

class Player extends Equatable {
  final dynamic id;
  final dynamic name;

  const Player({this.id, this.name});

  factory Player.fromJson(Map<String, dynamic> json) =>
      Player(id: json['id'] as dynamic, name: json['name'] as dynamic);

  Map<String, dynamic> toJson() => {'id': id, 'name': name};

  @override
  List<Object?> get props => [id, name];
}
