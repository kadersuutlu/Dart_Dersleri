import 'dart:math';

class VeritabaniIslemleri {
  String _kullaniciAdi = "kader";
  String _sifre = "123456";

  bool baglan() {
    if (_internetVarMi()) {
      if (_kullaniciAdi == "kader" && _sifre == "123456") {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  VeritabaniIslemleri() {}

  VeritabaniIslemleri.loginWithNameandPassword(
      String kullaniciAdi, String password) {}

  bool _internetVarMi() {
    if (Random().nextBool()) {
      return true;
    } else {
      return false;
    }
  }
}
