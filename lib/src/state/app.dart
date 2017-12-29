library app;

import 'dart:html';
import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../models/filter.dart';
import '../models/todo.dart';
import 'serializers.dart';

part 'app.g.dart';

const localStorageKey = 'built_redux_todos';

abstract class App implements Built<App, AppBuilder> {
  static Serializer<App> get serializer => _$appSerializer;

  App._();

  /// [App] factory returns the default state of the app.
  factory App() {
    // read the state from local storage
    final serialized = window.localStorage[localStorageKey];

    // if there is nothing in local storage return the following as the default state
    if (serialized == null)
      return new _$App((b) => b
        ..filter = Filter.all
        ..pendingTodo = '');

    // deserialize the state
    return serializers.deserializeWith(App.serializer, JSON.decode(serialized));
  }

  /// [todos] contains an immutable list of Todos
  BuiltList<Todo> get todos;

  /// [filter] contains the state of the filter.
  Filter get filter;

  /// [pendingTodo] contains the value of the add todo text box.
  /// Useful for controlling the text input
  String get pendingTodo;

  /// [visibleTodos] memoizes & returns a list of visible sorted `Todo`s.
  Iterable<Todo> get visibleTodos =>
      todos.where((todo) => !_shouldFilter(filter, todo));

  /// [numIncomplete] returns the number of incomplete todos.
  @memoized
  int get numIncomplete => todos.where((t) => !t.completed).length;

  /// [hasTodos] returns true if there are any todos
  bool get hasTodos => todos.isNotEmpty;
}

bool _shouldFilter(Filter filter, Todo todo) {
  switch (filter) {
    case Filter.active:
      return todo.completed;
    case Filter.completed:
      return !todo.completed;
    default:
      return false;
  }
}
