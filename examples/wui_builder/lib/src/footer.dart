import 'package:wui_builder/components.dart';
import 'package:wui_builder/vhtml.dart';

class Footer extends PComponent<Null> {
  Footer(Null props) : super(props);
  @override
  render() => new UpdateBlocker(
        new Vfooter()
          ..className = 'info'
          ..children = [
            new Vp()..text = 'Double-click to edit a todo',
            new Vp()
              ..children = [
                new Vspan()..text = 'Created by ',
                new VAnchorElement()
                  ..href = 'http://github.com/davidmarne'
                  ..text = 'davidmarne'
              ],
            new Vp()
              ..children = [
                new Vspan()..text = 'Part of ',
                new VAnchorElement()
                  ..href = 'http://todomvc.com'
                  ..text = 'TodoMVC'
              ]
          ],
      );
}
