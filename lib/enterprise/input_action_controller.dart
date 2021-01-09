import 'package:mondiv/warp/actions_dispatcher.dart';
import 'operations_service.dart';

class InputActionController with Actionable {
  static final InputActionController instance = InputActionController._internal();

  factory InputActionController() {
    return instance;
  }

  void setup() {
    actionsDispatcher().regWithData(this, "add_expense", (List<dynamic> data) {
      String val = data[0];
      print("==== trigger add_expense val: $val");
      OperationsService.instance.addExpense(val);
    });
  }

// private:
  InputActionController._internal();
}
