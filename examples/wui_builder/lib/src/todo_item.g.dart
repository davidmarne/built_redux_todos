// GENERATED CODE - DO NOT MODIFY BY HAND

part of todo_item;

// **************************************************************************
// Generator: BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_returning_this
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

class _$TodoItemProps extends TodoItemProps {
  @override
  final AppActions actions;
  @override
  final Todo todo;

  factory _$TodoItemProps([void updates(TodoItemPropsBuilder b)]) =>
      (new TodoItemPropsBuilder()..update(updates)).build();

  _$TodoItemProps._({this.actions, this.todo}) : super._() {
    if (actions == null) throw new ArgumentError.notNull('actions');
    if (todo == null) throw new ArgumentError.notNull('todo');
  }

  @override
  TodoItemProps rebuild(void updates(TodoItemPropsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  TodoItemPropsBuilder toBuilder() => new TodoItemPropsBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! TodoItemProps) return false;
    return actions == other.actions && todo == other.todo;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, actions.hashCode), todo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TodoItemProps')
          ..add('actions', actions)
          ..add('todo', todo))
        .toString();
  }
}

class TodoItemPropsBuilder
    implements Builder<TodoItemProps, TodoItemPropsBuilder> {
  _$TodoItemProps _$v;

  AppActions _actions;
  AppActions get actions => _$this._actions;
  set actions(AppActions actions) => _$this._actions = actions;

  TodoBuilder _todo;
  TodoBuilder get todo => _$this._todo ??= new TodoBuilder();
  set todo(TodoBuilder todo) => _$this._todo = todo;

  TodoItemPropsBuilder();

  TodoItemPropsBuilder get _$this {
    if (_$v != null) {
      _actions = _$v.actions;
      _todo = _$v.todo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TodoItemProps other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$TodoItemProps;
  }

  @override
  void update(void updates(TodoItemPropsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$TodoItemProps build() {
    final _$result =
        _$v ?? new _$TodoItemProps._(actions: actions, todo: todo?.build());
    replace(_$result);
    return _$result;
  }
}
