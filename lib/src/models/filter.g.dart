// GENERATED CODE - DO NOT MODIFY BY HAND

part of filter;

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

const Filter _$all = const Filter._('all');
const Filter _$active = const Filter._('active');
const Filter _$completed = const Filter._('completed');

Filter _$valueOf(String name) {
  switch (name) {
    case 'all':
      return _$all;
    case 'active':
      return _$active;
    case 'completed':
      return _$completed;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<Filter> _$values = new BuiltSet<Filter>(const <Filter>[
  _$all,
  _$active,
  _$completed,
]);

Serializer<Filter> _$filterSerializer = new _$FilterSerializer();

class _$FilterSerializer implements PrimitiveSerializer<Filter> {
  @override
  final Iterable<Type> types = const <Type>[Filter];
  @override
  final String wireName = 'Filter';

  @override
  Object serialize(Serializers serializers, Filter object,
          {FullType specifiedType: FullType.unspecified}) =>
      object.name;

  @override
  Filter deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType: FullType.unspecified}) =>
      Filter.valueOf(serialized as String);
}
