class Enjectable {}

class IoC {
  static final IoC instance = IoC._internal();

  factory IoC() {
    return instance;
  }

  void reg<T>(T p) {
    _doReg(T, p as Enjectable);
  }

  void unreg<T>() {
    _doUnReg(T);
  }

  T get<T>() {
    Enjectable p = _doGet(T);
    return p as T;
  }

  void reset() {
    _map.clear();
  }

// private:

  IoC._internal();

  void _doReg(Type t, Enjectable p) {
    var cp = _map[t];
    assert(cp == null, 'already registered');
    _map[t] = p;
  }

  void _doUnReg(Type t) {
    _map[t] = null;
  }

  Enjectable _doGet(Type t) {
    return _map[t];
  }

  Map<Type, Enjectable> _map = {};
}
