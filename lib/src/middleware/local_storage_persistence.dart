import 'dart:html';
import 'dart:convert';

import 'package:built_redux/built_redux.dart';

import '../state/app.dart';
import '../state/actions.dart';
import '../state/serializers.dart';

NextActionHandler localStorageMiddleware(
        MiddlewareApi<App, AppBuilder, AppActions> api) =>
    (ActionHandler next) => (Action action) {
          next(action);
          // write the new state to local storage
          window.localStorage[localStorageKey] =
              JSON.encode(serializers.serializeWith(App.serializer, api.state));
        };
