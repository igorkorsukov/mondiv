import 'package:mondiv/warp/ioc.dart';
import 'input_action_controller.dart';
import 'operations_service.dart';

void setupServices() {
  var ioc = IoC.instance;

  // registration exports
  ioc.reg<OperationsService>(OperationsService());

  // setup actions controllers
  InputActionController.instance.setup();
}
