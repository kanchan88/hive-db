import 'package:hive/hive.dart';

part 'todo.g.dart';

@HiveType(typeId:1)
class Todo {
  Todo({this.id, this.work});
  @HiveField(0)
  int? id;

  @HiveField(1)
  String? work;
}