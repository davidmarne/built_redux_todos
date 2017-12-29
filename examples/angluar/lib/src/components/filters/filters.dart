import 'package:angular/angular.dart';
import 'package:built_redux_todos/built_redux_todos.dart';

@Component(
  selector: 'filter',
  templateUrl: 'filters.html',
  directives: const [NgClass, NgIf],
  changeDetection: ChangeDetectionStrategy.OnPush,
)
class FiltersComponent {
  @Input()
  Filter filter;

  @Input()
  int numIncomplete;

  @Input()
  AppActions actions;

  bool get isAll => filter == Filter.all;
  bool get isActive => filter == Filter.active;
  bool get isCompleted => filter == Filter.completed;

  void setAll() {
    actions.setFilter(Filter.all);
  }

  void setActive() {
    actions.setFilter(Filter.active);
  }

  void setCompleted() {
    actions.setFilter(Filter.completed);
  }

  void clearCompleted() {
    actions.clearCompleted();
  }
}
