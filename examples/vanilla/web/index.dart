import 'dart:html';
import 'package:built_redux/built_redux.dart';
import 'package:built_redux_todos/built_redux_todos.dart';
// import 'package:built_redux_dev_tools/built_redux_dev_tools.dart';

const mainSectionClass = '.main';
const filtersClass = '.filters';
final todoAppSection = document.querySelector('.todoapp');
final addTodoInput = document.querySelector('.new-todo');

var store = new Store<App, AppBuilder, AppActions>(
  appReducer(),
  new App(),
  new AppActions(),
  middleware: [localStorageMiddleware],
);

void main() {
  // new ReduxDevTools(store);
  hasTodosChanged(store.state.hasTodos);

  // adds a new todo on enter
  addTodoInput.onKeyUp.listen((e) {
    final iElement = (e.target as TextInputElement);
    if (e.keyCode == KeyCode.ENTER && iElement.value != '') {
      store.actions.createTodo(iElement.value);
      iElement.value = '';
    }
  });

  store.nextSubstate((s) => s.hasTodos).listen(hasTodosChanged);

  store.nextSubstate((s) => s.filter).listen((_) {
    updateFilters();
  });

  store.nextSubstate((s) => s.visibleTodos).listen((_) {
    updateTodos();
  });

  store.nextSubstate((s) => s.numIncomplete).listen(updateNumIncomplete);
}

void hasTodosChanged(bool hasTodos) {
  if (!hasTodos) {
    removeContentSections();
  } else {
    addContentSections();
  }
}

void removeContentSections() {
  // remove main section
  todoAppSection.children[1].remove();
  // remove footer section
  todoAppSection.children[2].remove();
}

void addContentSections() {
  todoAppSection.children
    ..insert(1, createMainSection())
    ..insert(2, createFooterSection());
}

Element createMainSection() => new Element.section()
  ..className = 'main'
  ..children = [
    new CheckboxInputElement()..className = 'toggle-all',
    new LabelElement()
      ..htmlFor = 'toggle-all'
      ..text = 'Mark all as complete'
      ..onClick.listen((e) => store.actions.toggleAll()),
    new Element.ul()
      ..className = 'todo-list'
      ..children = createTodos()
  ];

Element createFooterSection() => new Element.footer()
  ..className = 'footer'
  ..children = [
    new Element.span()
      ..className = 'todo-count'
      ..children = createNumIncompleteLabelContents(),
    new Element.ul()
      ..className = 'filters'
      ..children = Filter.values.map(createFilterItem).toList(),
    new ButtonElement()
      ..className = 'clear-completed'
      ..text = 'Clear completed'
      ..onClick.listen((e) => store.actions.clearCompleted())
  ];

Element createFilterItem(Filter filter) => new Element.li()
  ..children = [
    new Element.a()
      ..text = filter.name
      ..onClick.listen((e) => store.actions.setFilter(filter))
      ..className = store.state.filter == filter ? 'selected' : '',
  ];

void updateFilters() {
  final parent = document.querySelector(filtersClass);
  parent.children[0].children.first.className =
      store.state.filter == Filter.all ? 'selected' : '';
  parent.children[1].children.first.className =
      store.state.filter == Filter.active ? 'selected' : '';
  parent.children[2].children.first.className =
      store.state.filter == Filter.completed ? 'selected' : '';
}

List<Element> createTodos() =>
    store.state.visibleTodos.map((t) => createTodo(t)).toList();

Element createTodo(Todo todo) => new Element.li()
  ..className = todo.completed ? 'completed' : ''
  ..children = [
    new Element.div()
      ..className = 'view'
      ..children = [
        new CheckboxInputElement()
          ..className = 'toggle'
          ..onClick.listen((e) => store.actions.toggleCompleted(todo.id))
          ..checked = todo.completed,
        new LabelElement()..text = todo.text,
        new ButtonElement()
          ..className = 'destroy'
          ..onClick.listen((e) => store.actions.remove(todo.id))
      ],
  ];

void updateTodos() {
  document.querySelector('.todo-list').children = createTodos();
}

void updateNumIncomplete(int numIncomplete) {
  document.querySelector('.todo-count').children =
      createNumIncompleteLabelContents();
}

List<Element> createNumIncompleteLabelContents() => [
      new Element.tag('strong')..text = '${store.state.numIncomplete}',
      new Element.span()
        ..text = store.state.numIncomplete == 1 ? ' item left' : ' items left'
    ];
