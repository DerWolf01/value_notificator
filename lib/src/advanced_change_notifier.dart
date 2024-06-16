library;

typedef AdvancedChangeNotifierCallback<T> = Future<void> Function(T? value);

/// The class resembles the standart ChangeNotifier with the difference of taking a generic type and notifiying every listener with the new or updated value of type <T>
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
