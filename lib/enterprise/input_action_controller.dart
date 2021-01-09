import "package:mondiv/warp/actions_dispatcher.dart";

class InputActionController with Actionable {
  static final InputActionController instance = InputActionController._internal();

  factory InputActionController() {
    return instance;
  }

  void setup() {
    actionsDispatcher().reg(this, "add_expense", () {
      print("==== trigger add_expense");
    });
  }

// private:
  InputActionController._internal();
}
