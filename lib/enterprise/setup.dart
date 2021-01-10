import 'package:mondiv/warp/ioc.dart';
import 'input_action_controller.dart';
import 'operations_service.dart';
import 'package:firebase_core/firebase_core.dart';

void setupServices() {
  var ioc = IoC.instance;

  // Registration exports
  ioc.reg<OperationsService>(OperationsService());

  // Setup actions controllers
  InputActionController.instance.setup();

  // Setup firebase
  Firebase.initializeApp();
}
