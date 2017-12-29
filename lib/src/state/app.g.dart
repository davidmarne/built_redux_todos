// GENERATED CODE - DO NOT MODIFY BY HAND

part of app;

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

Serializer<App> _$appSerializer = new _$AppSerializer();

class _$AppSerializer implements StructuredSerializer<App> {
  @override
  final Iterable<Type> types = const [App, _$App];
  @override
  final String wireName = 'App';

  @override
  Iterable serialize(Serializers serializers, App object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'todos',
      serializers.serialize(object.todos,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Todo)])),
      'filter',
      serializers.serialize(object.filter,
          specifiedType: const FullType(Filter)),
      'pendingTodo',
      serializers.serialize(object.pendingTodo,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  App deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new AppBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'todos':
          result.todos.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Todo)]))
              as BuiltList<Todo>);
          break;
        case 'filter':
          result.filter = serializers.deserialize(value,
              specifiedType: const FullType(Filter)) as Filter;
          break;
        case 'pendingTodo':
          result.pendingTodo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$App extends App {
  @override
  final BuiltList<Todo> todos;
  @override
  final Filter filter;
  @override
  final String pendingTodo;
  int __numIncomplete;

  factory _$App([void updates(AppBuilder b)]) =>
      (new AppBuilder()..update(updates)).build();

  _$App._({this.todos, this.filter, this.pendingTodo}) : super._() {
    if (todos == null) throw new ArgumentError.notNull('todos');
    if (filter == null) throw new ArgumentError.notNull('filter');
    if (pendingTodo == null) throw new ArgumentError.notNull('pendingTodo');
  }

  @override
  int get numIncomplete => __numIncomplete ??= super.numIncomplete;

  @override
  App rebuild(void updates(AppBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AppBuilder toBuilder() => new AppBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! App) return false;
    return todos == other.todos &&
        filter == other.filter &&
        pendingTodo == other.pendingTodo;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, todos.hashCode), filter.hashCode), pendingTodo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('App')
          ..add('todos', todos)
          ..add('filter', filter)
          ..add('pendingTodo', pendingTodo))
        .toString();
  }
}

class AppBuilder implements Builder<App, AppBuilder> {
  _$App _$v;

  ListBuilder<Todo> _todos;
  ListBuilder<Todo> get todos => _$this._todos ??= new ListBuilder<Todo>();
  set todos(ListBuilder<Todo> todos) => _$this._todos = todos;

  Filter _filter;
  Filter get filter => _$this._filter;
  set filter(Filter filter) => _$this._filter = filter;

  String _pendingTodo;
  String get pendingTodo => _$this._pendingTodo;
  set pendingTodo(String pendingTodo) => _$this._pendingTodo = pendingTodo;

  AppBuilder();

  AppBuilder get _$this {
    if (_$v != null) {
      _todos = _$v.todos?.toBuilder();
      _filter = _$v.filter;
      _pendingTodo = _$v.pendingTodo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(App other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$App;
  }

  @override
  void update(void updates(AppBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$App build() {
    final _$result = _$v ??
        new _$App._(
            todos: todos?.build(), filter: filter, pendingTodo: pendingTodo);
    replace(_$result);
    return _$result;
  }
}
