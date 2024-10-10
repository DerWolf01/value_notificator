import 'package:value_notificator/src/value_notificator.dart';

void main() {
  var service = ChatService();
  service.addListener(
    (value) async {
      print("This listener was called and received '$value'");
    },
  );
  service.sendMessage("A test of this package");
}

class ChatService extends ValueNotificator<String> {
  sendMessage(String text) {
    print("He said: '$text'");
    notifyListeners(text);
  }
}
