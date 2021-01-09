class Actionable {}

typedef ActionCallBack = void Function();
typedef ActionCallBackWithName = void Function(String action);
typedef ActionCallBackWithNameAndData = void Function(String action, List<dynamic> data);

ActionsDispatcher actionsDispatcher() {
  return ActionsDispatcher.instance;
}

class ActionsDispatcher {
  static final ActionsDispatcher instance = ActionsDispatcher._internal();

  factory ActionsDispatcher() {
    return instance;
  }

  void reg(Actionable client, String action, ActionCallBack call) {
    regWithNameAndData(client, action, (String action, List<dynamic> data) {
      call();
    });
  }

  void regWithName(Actionable client, String action, ActionCallBackWithName call) {
    regWithNameAndData(client, action, (String action, List<dynamic> data) {
      call(action);
    });
  }

  void regWithNameAndData(Actionable client, String action, ActionCallBackWithNameAndData call) {
    _ActionRegistration r = new _ActionRegistration(client, action, call);
    this._registrations.add(r);
  }

  void dispatch(String action) {
    List<dynamic> dummy = [];
    dispatchWithData(action, dummy);
  }

  void dispatchWithData(String action, List<dynamic> data) {
    for (var r in this._registrations) {
      if (r.action == action) {
        r.callback(action, data);
      }
    }
  }

// private:
  ActionsDispatcher._internal();
  List<_ActionRegistration> _registrations = [];
}

class _ActionRegistration {
  Actionable client;
  String action;
  ActionCallBackWithNameAndData callback;

  _ActionRegistration(Actionable client, String action, ActionCallBackWithNameAndData callback) {
    this.client = client;
    this.action = action;
    this.callback = callback;
  }
}
