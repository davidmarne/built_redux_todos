// GENERATED CODE - DO NOT MODIFY BY HAND

part of actions;

// **************************************************************************
// Generator: BuiltReduxGenerator
// **************************************************************************

class _$AppActions extends AppActions {
  final ActionDispatcher<String> updatePendingTodo =
      new ActionDispatcher<String>('AppActions-updatePendingTodo');

  final ActionDispatcher<Null> clearCompleted =
      new ActionDispatcher<Null>('AppActions-clearCompleted');

  final ActionDispatcher<int> remove =
      new ActionDispatcher<int>('AppActions-remove');

  final ActionDispatcher<Null> toggleAll =
      new ActionDispatcher<Null>('AppActions-toggleAll');

  final ActionDispatcher<int> toggleCompleted =
      new ActionDispatcher<int>('AppActions-toggleCompleted');

  final ActionDispatcher<EditTodoPayload> editTodo =
      new ActionDispatcher<EditTodoPayload>('AppActions-editTodo');

  final ActionDispatcher<String> createTodo =
      new ActionDispatcher<String>('AppActions-createTodo');

  final ActionDispatcher<Filter> setFilter =
      new ActionDispatcher<Filter>('AppActions-setFilter');
  factory _$AppActions() => new _$AppActions._();

  _$AppActions._() : super._();

  @override
  void setDispatcher(Dispatcher dispatcher) {
    updatePendingTodo.setDispatcher(dispatcher);
    clearCompleted.setDispatcher(dispatcher);
    remove.setDispatcher(dispatcher);
    toggleAll.setDispatcher(dispatcher);
    toggleCompleted.setDispatcher(dispatcher);
    editTodo.setDispatcher(dispatcher);
    createTodo.setDispatcher(dispatcher);
    setFilter.setDispatcher(dispatcher);
  }
}

class AppActionsNames {
  static final ActionName<String> updatePendingTodo =
      new ActionName<String>('AppActions-updatePendingTodo');
  static final ActionName<Null> clearCompleted =
      new ActionName<Null>('AppActions-clearCompleted');
  static final ActionName<int> remove =
      new ActionName<int>('AppActions-remove');
  static final ActionName<Null> toggleAll =
      new ActionName<Null>('AppActions-toggleAll');
  static final ActionName<int> toggleCompleted =
      new ActionName<int>('AppActions-toggleCompleted');
  static final ActionName<EditTodoPayload> editTodo =
      new ActionName<EditTodoPayload>('AppActions-editTodo');
  static final ActionName<String> createTodo =
      new ActionName<String>('AppActions-createTodo');
  static final ActionName<Filter> setFilter =
      new ActionName<Filter>('AppActions-setFilter');
}
