const _alpha = " 0123abcdefghijklmnopqrstuvwxyzäüöß";

class InputValues {
  List<double> values = [];

  int get length => values.length;

  double get average => getAverageBetween(0, length - 1);

  int currentIndex = 0;

  void add(double v) {
    if (v > 1) v = 1;
    if (v < 0) v = 0;
    values.add(v);
  }

  void addBool(bool v) {
    values.add(v ? 1 : 0);
  }

  void addRange(num v, [num max = 20, num min = 0]) {
    v = (v > max ? max : v) - min;
    final double a = v / (max - min);
    add(a);
  }

  void addString(String v, int i1, [int i2]) {
    String v1 = "a";
    String v2 = "a";
    if (v.length > i1) {
      v1 = v[i1];
    }
    addLetter(v1);

    if (i2 != null) {
      if (v.length - i2 > 0) {
        v2 = v[v.length - 1 - i2];
      }
      addLetter(v2);
    }
  }

  void addLetter(String char) {
    int sel = 0;
    if (char.length >= 1) {
      sel = _alpha.split("").indexOf(char.toLowerCase());
    }
    addRange(sel >= 0 ? sel : 0, _alpha.length - 1, 0);
  }

  double getDouble([int i]) {
    return i != null ? values[i] : getNext();
  }

  bool getBool([int i]) {
    return (i != null ? values[i] : getNext()) > 0.4;
  }

  double getBetween(num min, num max) {
    return getNext() * (max - min) + min;
  }

  int getAverageIntBetween(int min, int max) {
    return (getAverageBetween(min, max) * (max - min) + min).round();
  }

  T selectList<T>(List<T> l, [double chance]) {
    final index =
        ((1.5 * getNext() + 0.5 * chance) / 2 * (l.length - 1)).round();
    print(l[index]);
    return l[index];
  }

  double getAverageBetween(int i1, int i2) {
    double sum = 0;
    i2 = i2 >= values.length ? values.length - 1 : i2;
    for (var i = i1; i <= i2; i++) {
      sum += values[i];
    }

    return sum / (i2 - i1 + 2);
  }

  double getNext() {
    currentIndex += 1;
    if (currentIndex >= values.length) currentIndex -= values.length;
    return values[currentIndex];
    // return currentIndex > 1
    //     ? getAverageBetween(currentIndex - 2, currentIndex)
    //     : getAverageBetween(currentIndex, currentIndex + 1);
  }
}
