import 'package:angular/angular.dart';
import 'package:built_redux_todos/built_redux_todos.dart';

@Component(
  selector: 'todo-item',
  templateUrl: 'todo.html',
  directives: const [NgClass],
  changeDetection: ChangeDetectionStrategy.OnPush,
)
class TodoComponent {
  @Input()
  Todo todo;

  @Input()
  AppActions actions;

  bool get isCompleted => todo.completed;

  void toggleCompleted() {
    actions.toggleCompleted(todo.id);
  }

  void remove() {
    actions.remove(todo.id);
  }
}
