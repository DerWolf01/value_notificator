/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/advanced_change_notifier_base.dart';

typedef AdvancedChangeNotifierCallback<T> = Future<void> Function(T? value);

mixin class AdvancedChangeNotifier<T> {
  final List<AdvancedChangeNotifierCallback<T>> _listeners = [];
  notifyListeners({T? value}) {
    for (var l in _listeners) {
      l(value);
    }
  }

  addListener(AdvancedChangeNotifierCallback<T> callback) {
    _listeners.add(callback);
  }

  removeListener(AdvancedChangeNotifierCallback<T> callback) {
    _listeners.removeWhere(
      (element) => element == callback,
    );
  }
}

// TODO: Export any libraries intended for clients of this package.
