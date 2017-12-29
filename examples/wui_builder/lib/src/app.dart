import 'dart:async';

import 'package:built_redux/built_redux.dart';
import 'package:built_redux_todos/built_redux_todos.dart';
import 'package:wui_builder/wui_builder.dart';
import 'package:wui_builder/components.dart';
import 'package:wui_builder/vhtml.dart';

import 'add_todo.dart';
import 'footer.dart';
import 'filters.dart';
import 'main_section.dart';

class ContainerProps {
  Store<App, AppBuilder, AppActions> store;
}

class Container extends PComponent<ContainerProps> {
  StreamSubscription storeSub;

  App get appState => props.store.state;

  Container(props) : super(props);

  @override
  void componentWillMount() {
    storeSub = props.store.stream.listen((_) => updateOnAnimationFrame());
  }

  @override
  void componentWillUnmount() {
    storeSub.cancel();
  }

  @override
  VNode render() => new Vdiv()
    ..children = [
      new Vsection()
        ..className = 'todoapp'
        ..children = [
          new AddTodo((b) => b
            ..actions = props.store.actions
            ..pendingTodo = appState.pendingTodo),
          new MainSection((b) => b
            ..actions = props.store.actions
            ..todos = appState.visibleTodos),
          new Filters((b) => b
            ..actions = props.store.actions
            ..filter = appState.filter
            ..numIncomplete = appState.numIncomplete)
        ],
      new Footer(null),
    ];
}
