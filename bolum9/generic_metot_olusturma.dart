void main(List<String> args) {
  double doubleOrt = ortalamaBul<double>(1, 3);
  double intOrt = ortalamaBul<int>(1, 5);
  print("Ortalama $doubleOrt");
}

double ortalamaBul<T extends num>(T s1, T s2) {
  return (s1 + s2) / 2;
}
