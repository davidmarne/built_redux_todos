library main_section;

import 'package:wui_builder/components.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';
import 'package:built_value/built_value.dart';
import 'package:built_redux_todos/built_redux_todos.dart';

import 'todo_item.dart';

part 'main_section.g.dart';

abstract class MainSectionProps
    implements Built<MainSectionProps, MainSectionPropsBuilder> {
  MainSectionProps._();
  factory MainSectionProps(void updates(MainSectionPropsBuilder b)) =
      _$MainSectionProps;

  AppActions get actions;
  Iterable<Todo> get todos;
}

class MainSection extends PurePComponent<MainSectionProps> {
  MainSection(void updates(MainSectionPropsBuilder b))
      : super(new MainSectionProps(updates));

  @override
  VNode render() => new Vsection()
    ..className = 'main'
    ..children = [
      new VCheckboxInputElement()..className = 'toggle-all',
      new VLabelElement()
        ..htmlFor = 'toggle-all'
        ..onClick = ((_) => props.actions.toggleAll()),
      new Vul()
        ..className = 'todo-list'
        ..children = props.todos.map((todo) => new TodoItem((b) => b
          ..actions = props.actions
          ..todo = todo.toBuilder())),
    ];
}
