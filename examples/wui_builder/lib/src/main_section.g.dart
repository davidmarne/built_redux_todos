// GENERATED CODE - DO NOT MODIFY BY HAND

part of main_section;

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

class _$MainSectionProps extends MainSectionProps {
  @override
  final AppActions actions;
  @override
  final Iterable<Todo> todos;

  factory _$MainSectionProps([void updates(MainSectionPropsBuilder b)]) =>
      (new MainSectionPropsBuilder()..update(updates)).build();

  _$MainSectionProps._({this.actions, this.todos}) : super._() {
    if (actions == null) throw new ArgumentError.notNull('actions');
    if (todos == null) throw new ArgumentError.notNull('todos');
  }

  @override
  MainSectionProps rebuild(void updates(MainSectionPropsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MainSectionPropsBuilder toBuilder() =>
      new MainSectionPropsBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! MainSectionProps) return false;
    return actions == other.actions && todos == other.todos;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, actions.hashCode), todos.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MainSectionProps')
          ..add('actions', actions)
          ..add('todos', todos))
        .toString();
  }
}

class MainSectionPropsBuilder
    implements Builder<MainSectionProps, MainSectionPropsBuilder> {
  _$MainSectionProps _$v;

  AppActions _actions;
  AppActions get actions => _$this._actions;
  set actions(AppActions actions) => _$this._actions = actions;

  Iterable<Todo> _todos;
  Iterable<Todo> get todos => _$this._todos;
  set todos(Iterable<Todo> todos) => _$this._todos = todos;

  MainSectionPropsBuilder();

  MainSectionPropsBuilder get _$this {
    if (_$v != null) {
      _actions = _$v.actions;
      _todos = _$v.todos;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MainSectionProps other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$MainSectionProps;
  }

  @override
  void update(void updates(MainSectionPropsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$MainSectionProps build() {
    final _$result =
        _$v ?? new _$MainSectionProps._(actions: actions, todos: todos);
    replace(_$result);
    return _$result;
  }
}
