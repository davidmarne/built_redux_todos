import 'package:angular/angular.dart';
import 'package:built_redux_todos/built_redux_todos.dart';
import '../todo/todo.dart';

@Component(
  selector: 'todos',
  templateUrl: 'todos.html',
  directives: const [TodoComponent, NgFor],
  changeDetection: ChangeDetectionStrategy.OnPush,
)
class TodosComponent {
  @Input()
  Iterable<Todo> visibleTodos;

  @Input()
  AppActions actions;

  void toggleAll() {
    actions.toggleAll();
  }
}
