library todo_item;

import 'package:wui_builder/components.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';
import 'package:built_value/built_value.dart';
import 'package:built_redux_todos/built_redux_todos.dart';

part 'todo_item.g.dart';

abstract class TodoItemProps
    implements Built<TodoItemProps, TodoItemPropsBuilder> {
  TodoItemProps._();
  factory TodoItemProps(void updates(TodoItemPropsBuilder b)) = _$TodoItemProps;

  AppActions get actions;
  Todo get todo;
}

class TodoItem extends PurePComponent<TodoItemProps> {
  TodoItem(void updates(TodoItemPropsBuilder b))
      : super(new TodoItemProps(updates));

  @override
  VNode render() => new Vli()
    ..className = props.todo.completed ? 'completed' : ''
    ..children = [
      new Vdiv()
        ..className = 'view'
        ..children = [
          new VCheckboxInputElement()
            ..className = 'toggle'
            ..onClick = ((_) => props.actions.toggleCompleted(props.todo.id))
            ..checked = props.todo.completed,
          new Vlabel()..text = props.todo.text,
          new Vbutton()
            ..className = 'destroy'
            ..onClick = ((_) => props.actions.remove(props.todo.id)),
        ],
    ];
}
