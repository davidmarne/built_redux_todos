library actions;

import 'package:built_redux/built_redux.dart';
import '../models/filter.dart';

part 'actions.g.dart';

abstract class AppActions extends ReduxActions {
  AppActions._();
  factory AppActions() => new _$AppActions();

  /// [setFilter] sets the state of the filter
  ActionDispatcher<Filter> get setFilter;

  /// [createTodo] adds a todo with the given text to the todos map
  ActionDispatcher<String> get createTodo;

  /// [createTodo] adds a todo with the given text to the todos map
  ActionDispatcher<EditTodoPayload> get editTodo;

  /// [toggleCompleted] toggles the completed state of the todo with the given id
  ActionDispatcher<int> get toggleCompleted;

  /// [toggleAll] toggles the completed state of all todos
  ActionDispatcher<Null> get toggleAll;

  /// [remove] completely removes the todo
  ActionDispatcher<int> get remove;

  /// [clearCompleted] completely removes all complete todos
  ActionDispatcher<Null> get clearCompleted;

  /// [updatePendingTodo] sets the pending todo content
  ActionDispatcher<String> get updatePendingTodo;
}

class EditTodoPayload {
  final int id;
  final String newText;
  EditTodoPayload(this.id, this.newText);
}
