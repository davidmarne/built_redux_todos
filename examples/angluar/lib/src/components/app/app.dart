import 'package:angular/angular.dart';
import 'package:built_redux/built_redux.dart';
import 'package:built_redux_todos/built_redux_todos.dart';

import '../filters/filters.dart';
import '../addTodo/addTodo.dart';
import '../todos/todos.dart';

@Component(
  selector: 'app',
  templateUrl: 'app.html',
  directives: const [
    FiltersComponent,
    AddTodoComponent,
    TodosComponent,
    NgIf,
  ],
)
class AppComponent {
  final Store<App, AppBuilder, AppActions> store;

  AppComponent()
      : store = new Store<App, AppBuilder, AppActions>(
          appReducer(),
          new App(),
          new AppActions(),
          middleware: [localStorageMiddleware],
        );
}
