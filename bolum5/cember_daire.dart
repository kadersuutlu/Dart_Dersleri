class CemberDaire {
  int _yariCap = 1;
  double _PI = 3.14;

  CemberDaire(int yariCap) {
    _yariCapKontrol = yariCap;
  }

  void set _yariCapKontrol(int deger) {
    if (deger > 0) {
      _yariCap = deger;
    } else {
      _yariCap = 1;
    }
  }

  double cevre() {
    return 2 * _PI * _yariCap;
  }

  double alan() {
    return _PI * _yariCap * _yariCap;
  }
}
