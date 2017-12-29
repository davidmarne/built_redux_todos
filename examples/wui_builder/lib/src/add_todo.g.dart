// GENERATED CODE - DO NOT MODIFY BY HAND

part of add_todo;

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

class _$AddTodoProps extends AddTodoProps {
  @override
  final AppActions actions;
  @override
  final String pendingTodo;

  factory _$AddTodoProps([void updates(AddTodoPropsBuilder b)]) =>
      (new AddTodoPropsBuilder()..update(updates)).build();

  _$AddTodoProps._({this.actions, this.pendingTodo}) : super._() {
    if (actions == null) throw new ArgumentError.notNull('actions');
    if (pendingTodo == null) throw new ArgumentError.notNull('pendingTodo');
  }

  @override
  AddTodoProps rebuild(void updates(AddTodoPropsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AddTodoPropsBuilder toBuilder() => new AddTodoPropsBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! AddTodoProps) return false;
    return actions == other.actions && pendingTodo == other.pendingTodo;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, actions.hashCode), pendingTodo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddTodoProps')
          ..add('actions', actions)
          ..add('pendingTodo', pendingTodo))
        .toString();
  }
}

class AddTodoPropsBuilder
    implements Builder<AddTodoProps, AddTodoPropsBuilder> {
  _$AddTodoProps _$v;

  AppActions _actions;
  AppActions get actions => _$this._actions;
  set actions(AppActions actions) => _$this._actions = actions;

  String _pendingTodo;
  String get pendingTodo => _$this._pendingTodo;
  set pendingTodo(String pendingTodo) => _$this._pendingTodo = pendingTodo;

  AddTodoPropsBuilder();

  AddTodoPropsBuilder get _$this {
    if (_$v != null) {
      _actions = _$v.actions;
      _pendingTodo = _$v.pendingTodo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddTodoProps other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$AddTodoProps;
  }

  @override
  void update(void updates(AddTodoPropsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$AddTodoProps build() {
    final _$result =
        _$v ?? new _$AddTodoProps._(actions: actions, pendingTodo: pendingTodo);
    replace(_$result);
    return _$result;
  }
}
