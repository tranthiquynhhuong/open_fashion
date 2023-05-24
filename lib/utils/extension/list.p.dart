extension ListEx on List {
  T? getFirst<T>() {
    if (isEmpty) {
      return null;
    }
    if (first is T) {
      return first;
    }
    return null;
  }

  T? getLast<T>() {
    if (isEmpty) {
      return null;
    }
    if (last is T) {
      return last;
    }
    return null;
  }
}

extension ListExOpa<T> on List<T> {
  T? fWhere(bool Function(T e) test) {
    try {
      return firstWhere(test);
    } catch (_) {
      return null;
    }
  }

  T? firstSafe() {
    return getFirst<T>();
  }

  T? lastSafe() {
    return getLast<T>();
  }

  void addAllSafe(Iterable<T>? other) {
    if (other != null) {
      addAll(other);
    }
  }

  void clearAddAllSafe(Iterable<T>? other) {
    clear();
    addAllSafe(other);
  }

  List<T> clone() {
    return List<T>.from(this);
  }
}

extension IterableEx<T> on Iterable<T> {
  List<T> clone() {
    return List<T>.from(this);
  }
}
