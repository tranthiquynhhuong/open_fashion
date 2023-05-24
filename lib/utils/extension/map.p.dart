extension MapEx<K, V> on Map<K, V> {
  Map? getMap(dynamic key) {
    final f = get(key);
    return f is Map ? f : null;
  }

  List<T>? getList<T>(dynamic key) {
    final f = get(key);
    if (f is List) {
      try {
        return f.cast<T>().toList();
      } catch (_) {}
    }
    return null;
  }

  dynamic get(dynamic key) => this[key];

  T value<T>(dynamic key, {required T def}) {
    final t = get(key);
    return t is T ? t : def;
  }

  String str(dynamic key, {String def = ''}) {
    return value<String>(key, def: def);
  }

  num gNum(dynamic key, {num def = 0}) {
    return value<num>(key, def: def);
  }

  int gInt(dynamic key, {int def = 0}) {
    return value<int>(key, def: def);
  }

  double gDouble(dynamic key, {double def = 0.0}) {
    final v1 = value<double?>(key, def: null);
    if (v1 != null) {
      return v1;
    }
    return value<num>(key, def: def).toDouble();
  }

  bool gBool(dynamic key, {bool def = false}) {
    return value<bool>(key, def: def);
  }

  Map gMap(dynamic key, {Map def = const {}}) {
    return value<Map>(key, def: def);
  }

  List gList(dynamic key, {List def = const []}) {
    return value<List>(key, def: def);
  }

  List<String> gListStr(dynamic key, {List<String> def = const []}) {
    final ls = value<List?>(key, def: null);
    if (ls != null) {
      try {
        return ls.cast();
      } catch (_) {}
    }
    return def;
  }

  List<Map> gListMap(dynamic key, {List<Map> def = const <Map>[]}) {
    final t = get(key);
    if (t is List) {
      return <Map>[...t];
    }
    return def;
  }

  void addAllSafe(Map<K, V>? other) {
    if (other != null) {
      addAll(other);
    }
  }

  void clearAddAllSafe(Map<K, V>? other) {
    clear();
    addAllSafe(other);
  }

  Map<K, V> clone() => Map<K, V>.from(this);
}
