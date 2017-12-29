library todo;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'todo.g.dart';

abstract class Todo implements Built<Todo, TodoBuilder> {
  static Serializer<Todo> get serializer => _$todoSerializer;

  Todo._();
  factory Todo([void updates(TodoBuilder b)]) = _$Todo;

  /// [id] is a unique id for the todo
  int get id;

  /// [text] is the content of the todo
  String get text;

  /// [completed] is the status of the todo
  bool get completed;
}
