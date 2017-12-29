// GENERATED CODE - DO NOT MODIFY BY HAND

part of filters;

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

class _$FiltersProps extends FiltersProps {
  @override
  final AppActions actions;
  @override
  final Filter filter;
  @override
  final int numIncomplete;

  factory _$FiltersProps([void updates(FiltersPropsBuilder b)]) =>
      (new FiltersPropsBuilder()..update(updates)).build();

  _$FiltersProps._({this.actions, this.filter, this.numIncomplete})
      : super._() {
    if (actions == null) throw new ArgumentError.notNull('actions');
    if (filter == null) throw new ArgumentError.notNull('filter');
    if (numIncomplete == null) throw new ArgumentError.notNull('numIncomplete');
  }

  @override
  FiltersProps rebuild(void updates(FiltersPropsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FiltersPropsBuilder toBuilder() => new FiltersPropsBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! FiltersProps) return false;
    return actions == other.actions &&
        filter == other.filter &&
        numIncomplete == other.numIncomplete;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, actions.hashCode), filter.hashCode),
        numIncomplete.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FiltersProps')
          ..add('actions', actions)
          ..add('filter', filter)
          ..add('numIncomplete', numIncomplete))
        .toString();
  }
}

class FiltersPropsBuilder
    implements Builder<FiltersProps, FiltersPropsBuilder> {
  _$FiltersProps _$v;

  AppActions _actions;
  AppActions get actions => _$this._actions;
  set actions(AppActions actions) => _$this._actions = actions;

  Filter _filter;
  Filter get filter => _$this._filter;
  set filter(Filter filter) => _$this._filter = filter;

  int _numIncomplete;
  int get numIncomplete => _$this._numIncomplete;
  set numIncomplete(int numIncomplete) => _$this._numIncomplete = numIncomplete;

  FiltersPropsBuilder();

  FiltersPropsBuilder get _$this {
    if (_$v != null) {
      _actions = _$v.actions;
      _filter = _$v.filter;
      _numIncomplete = _$v.numIncomplete;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FiltersProps other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$FiltersProps;
  }

  @override
  void update(void updates(FiltersPropsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$FiltersProps build() {
    final _$result = _$v ??
        new _$FiltersProps._(
            actions: actions, filter: filter, numIncomplete: numIncomplete);
    replace(_$result);
    return _$result;
  }
}
