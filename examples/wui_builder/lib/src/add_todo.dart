library add_todo;

import 'dart:html';

import 'package:wui_builder/components.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';
import 'package:built_value/built_value.dart';
import 'package:built_redux_todos/built_redux_todos.dart';

part 'add_todo.g.dart';

abstract class AddTodoProps
    implements Built<AddTodoProps, AddTodoPropsBuilder> {
  AddTodoProps._();
  factory AddTodoProps(void updates(AddTodoPropsBuilder b)) = _$AddTodoProps;

  AppActions get actions;
  String get pendingTodo;
}

class AddTodo extends PurePComponent<AddTodoProps> {
  AddTodo(void updates(AddTodoPropsBuilder b))
      : super(new AddTodoProps(updates));

  @override
  VNode render() => new Vheader()
    ..className = 'header'
    ..children = [
      new Vh1()..text = 'todos',
      new VTextInputElement()
        ..autofocus = true
        ..className = 'new-todo'
        ..onKeyPress = _submitTodo
        ..value = props.pendingTodo
        ..onInput = ((e) =>
            props.actions.updatePendingTodo((e.target as InputElement).value))
        ..placeholder = 'What needs to be done?'
    ];

  void _submitTodo(KeyEvent e) {
    if (e.keyCode == KeyCode.ENTER && props.pendingTodo.isNotEmpty)
      props.actions.createTodo(props.pendingTodo);
  }
}
