import 'dart:async';

class Asyncable {
  List<StreamSubscription> subscriptions = [];

  void unsubscribe() {
    for (var s in subscriptions) {
      s.cancel();
    }
    subscriptions.clear();
  }
}
