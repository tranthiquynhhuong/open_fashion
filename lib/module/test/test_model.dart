part of test;

class TestModel extends ChangeNotifier {
  String str = 'string';
  int c = 1;
  String get testModelText => str;

  void updateString() {
    c = c + 1;
    str = 'string updated $c';
    notifyListeners();
  }
}
