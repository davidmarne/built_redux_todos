library filter;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'filter.g.dart';

/// [Filter] contains all possible states for the filter
class Filter extends EnumClass {
  static Serializer<Filter> get serializer => _$filterSerializer;

  static const Filter all = _$all;
  static const Filter active = _$active;
  static const Filter completed = _$completed;

  const Filter._(String name) : super(name);

  static BuiltSet<Filter> get values => _$values;
  static Filter valueOf(String name) => _$valueOf(name);
}
