import 'asyncable.dart';
import 'channel.dart';

class Notification {
  void onNotify(Asyncable receiver, void Function() f) {
    _ch.onReceive(receiver, (int) {
      f();
    });
  }

  void notify() {
    _ch.send(0);
  }

// private:

  Channel<int> _ch;
}
