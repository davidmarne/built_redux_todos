library filters;

import 'package:wui_builder/components.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';
import 'package:built_value/built_value.dart';
import 'package:built_redux_todos/built_redux_todos.dart';

part 'filters.g.dart';

abstract class FiltersProps
    implements Built<FiltersProps, FiltersPropsBuilder> {
  FiltersProps._();
  factory FiltersProps(void updates(FiltersPropsBuilder b)) = _$FiltersProps;

  AppActions get actions;
  Filter get filter;
  int get numIncomplete;
}

class Filters extends PurePComponent<FiltersProps> {
  Filters(void updates(FiltersPropsBuilder b))
      : super(new FiltersProps(updates));

  @override
  VNode render() => new Vfooter()
    ..className = 'footer'
    ..children = [
      _itemsLeft(),
      _filterSelect(),
      _clearAllButton(),
    ];

  VNode _itemsLeft() => new Vspan()
    ..className = 'todo-count'
    ..children = [
      new Vstrong()..text = '${props.numIncomplete}',
      new Vspan()
        ..text = props.numIncomplete == 1 ? ' item left' : ' items left',
    ];

  VNode _filterSelect() => new Vul()
    ..className = 'filters'
    ..children = Filter.values.map(createFilterItem);

  VNode createFilterItem(Filter filter) => new Vli()
    ..children = [
      new Va()
        ..text = filter.name
        ..onClick = ((_) => props.actions.setFilter(filter))
        ..className = props.filter == filter ? 'selected' : '',
    ];

  VNode _clearAllButton() => new Vbutton()
    ..className = 'clear-completed'
    ..onClick = ((_) => props.actions.clearCompleted())
    ..text = 'Clear completed';
}
