library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

import '../models/todo.dart';
import '../models/filter.dart';
import 'app.dart';

part 'serializers.g.dart';

@SerializersFor(const [App, Todo, Filter])
final Serializers serializers = _$serializers;
