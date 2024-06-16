import 'package:advanced_change_notifier/advanced_change_notifier.dart';

class ChatService extends AdvancedChangeNotifier<String> {
  sendMessage(String text) {
    print("He said: '$text'");
    notifyListeners(value: text);
  }
}

void main() {
  var service = ChatService();
  service.addListener(
    (value) async {
      print("This listener was called and received '$value'");
    },
  );
  service.sendMessage("A test of this package");
}
