import 'dart:html';
import 'package:wui_builder_example/wui_builder_example.dart';
import 'package:built_redux/built_redux.dart';
import 'package:wui_builder/wui_builder.dart';
import 'package:built_redux_todos/built_redux_todos.dart';

void main() {
  var store = new Store<App, AppBuilder, AppActions>(
    appReducer(),
    new App(),
    new AppActions(),
    middleware: [localStorageMiddleware],
  );

  render(new Container(new ContainerProps()..store = store),
      querySelector('#container'));
}
