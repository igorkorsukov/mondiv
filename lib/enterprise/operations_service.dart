import 'package:mondiv/warp/async/channel.dart';
import 'package:mondiv/warp/ioc.dart';

class OperationsServiceInject {
  OperationsService _srv = IoC.instance.get<OperationsService>();
  OperationsService operationsService() => _srv;
}

class OperationsService with Enjectable {
  static final OperationsService instance = OperationsService._internal();

  factory OperationsService() {
    return instance;
  }

  void addExpense(String value) {
    print("==== addExpense value: $value");
    _sumValue += value;
    _sumChanged.send(_sumValue);
  }

  String sumValue() => _sumValue;
  Channel<String> sumChanged() => _sumChanged;

// private:
  OperationsService._internal();

  String _sumValue = "-";
  Channel<String> _sumChanged = Channel<String>();
}
