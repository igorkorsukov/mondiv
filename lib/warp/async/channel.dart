import 'dart:async';

import 'asyncable.dart';

class Channel<T> {
  void onReceive(Asyncable receiver, void Function(T v) f) {
    if (_stream == null) {
      _stream = _controller.stream;
    }

    receiver.subscriptions.add(_stream.listen(f));
  }

  void send(T v) {
    _controller.add(v);
  }

// private:
  StreamController<T> _controller = StreamController<T>.broadcast();
  Stream<T> _stream;
}
