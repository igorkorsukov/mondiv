import 'package:mondiv/warp/async/channel.dart';

class OperationsService {
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
