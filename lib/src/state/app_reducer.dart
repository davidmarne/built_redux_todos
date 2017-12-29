import 'package:built_redux/built_redux.dart';
import 'package:built_collection/built_collection.dart';
import 'app.dart';
import 'actions.dart';
import '../models/todo.dart';
import '../models/filter.dart';

// [appReducer] returns a reducer that can be passed to a store
Reducer<App, AppBuilder, dynamic> appReducer() =>
    (new ReducerBuilder<App, AppBuilder>()
          ..add(AppActionsNames.createTodo, _createTodo)
          ..add(AppActionsNames.editTodo, _editTodo)
          ..add(AppActionsNames.setFilter, _setFilter)
          ..add(AppActionsNames.toggleCompleted, _toggleCompleted)
          ..add(AppActionsNames.toggleAll, _toggleAll)
          ..add(AppActionsNames.remove, _remove)
          ..add(AppActionsNames.clearCompleted, _clearCompleted)
          ..add(AppActionsNames.updatePendingTodo, _updatePendingTodo))
        .build();

// adds a todo to the map & inserts its id at the end of the sortedOrder
void _createTodo(App state, Action<String> action, AppBuilder builder) {
  builder
    ..pendingTodo = ''
    ..todos.add(
      new Todo((TodoBuilder b) => b
        ..id = new DateTime.now().millisecondsSinceEpoch
        ..text = action.payload
        ..completed = false),
    );
}

// updates the text of a todo item
void _editTodo(App state, Action<EditTodoPayload> action, AppBuilder builder) {
  _rebuildTodo(state.todos, builder.todos, action.payload.id,
      (TodoBuilder b) => b.text = action.payload.newText);
}

// sets the current filter
void _setFilter(App state, Action<Filter> action, AppBuilder builder) {
  builder.filter = action.payload;
}

// changes the completed value of a todo
void _toggleCompleted(App state, Action<int> action, AppBuilder builder) {
  _rebuildTodo(state.todos, builder.todos, action.payload,
      (TodoBuilder b) => b.completed = !b.completed);
}

void _toggleAll(App state, Action<int> action, AppBuilder builder) {
  // clear all the todos in the list, as they will all be rebuilt
  builder.todos.clear();

  // mark them all as complete unless they are all already complete
  final willBeComplete = !state.todos.every((t) => t.completed);
  for (final todo in state.todos)
    builder.todos.add(
      todo.rebuild((b) {
        b.completed = willBeComplete;
      }),
    );
}

// updates the sorted order
void _remove(App state, Action<int> action, AppBuilder builder) {
  builder.todos.removeWhere((todo) => todo.id == action.payload);
}

// removes all completed todos
void _clearCompleted(App state, Action<Null> action, AppBuilder builder) {
  builder.todos.removeWhere((todo) => todo.completed);
}

// update the pending todo text, used for controlled inputs
void _updatePendingTodo(App state, Action<String> action, AppBuilder builder) {
  builder.pendingTodo = action.payload;
}

// rebuilds a todo at with the given id and replaces the todo in the
// list with the rebuilt value
void _rebuildTodo(BuiltList<Todo> todos, ListBuilder<Todo> builder, int id,
    void updates(TodoBuilder b)) {
  // find the todo we want to rebuild
  final toRemove = todos.firstWhere((todo) => todo.id == id);

  // get the todos index
  final replaceIndex = todos.indexOf(toRemove);

  // remove the old todo and add the result of the rebuild
  // at the same index
  builder
    ..removeAt(replaceIndex)
    ..insert(
      replaceIndex,
      toRemove.rebuild(updates),
    );
}
