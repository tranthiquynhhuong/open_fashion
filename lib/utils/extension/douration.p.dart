extension DurationEx on Duration {
  String toStr() {
    return '${inHours.toString().padLeft(2, '0')}'
        ':${inMinutes.remainder(60).toString().padLeft(2, '0')}'
        ':${inSeconds.remainder(60).toString().padLeft(2, '0')}';
  }

  String toTimeStr() {
    String s = inSeconds.remainder(60).toString().padLeft(2, '0');
    s = '${inMinutes.remainder(60).toString().padLeft(2, '0')}:$s';
    if (inHours > 0) {
      s = '${inHours.toString().padLeft(2, '0')}:$s';
    }
    return s;
  }
}
