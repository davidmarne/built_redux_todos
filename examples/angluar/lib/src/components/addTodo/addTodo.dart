import 'package:angular/angular.dart';
import 'package:built_redux_todos/built_redux_todos.dart';

@Component(
  selector: 'add-todo',
  templateUrl: 'addTodo.html',
  changeDetection: ChangeDetectionStrategy.OnPush,
)
class AddTodoComponent {
  @Input()
  AppActions actions;

  @Input()
  String pendingTodo;

  void submitTodo() {
    if (pendingTodo.isNotEmpty) actions.createTodo(pendingTodo);
  }

  void updatePendingTodo(String content) {
    actions.updatePendingTodo(content);
  }
}
