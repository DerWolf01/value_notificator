<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->
## Main purpose

This package helps you ensuring your services and widgets are always notified and provided with the proper values whenever a change happens in order to avoid unneccessary requests and method calls after an event.


## Features

In order to avoid unnecessary method calls just to retrieve the new values, this package resembles the known "ChangeNotifier" with the difference of the new values being passed to the listeners by the notifier.


## Usage

You can either use the abse class to extend from it or use it as an mixin.
The base class takes an generic type argument and makes sure you are always provided with the changes on any event.
```dart
class ChatService extends AdvancedChangeNotifier<String> {
  sendMessage(String text) {
    print("He said: '$text'");
    notifyListeners(value: text);
  }
}
```

## Additional information

This package is exceptionally usefule when using it on widgets or their services and can help reducing redundant or unneccessary code by avoiding to request data again everytime an event happens but passing it over with the listener itsself instead.
