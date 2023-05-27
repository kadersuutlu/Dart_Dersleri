void main(List<String> args) {
  Asker emre = Asker("emre", 34);
  Er hasan = Er("hasan", 20);
  hasan.memleketDegistir("Bursa");
  hasan.selamla();
}

class Asker {
  String ad = "Varsayılan";
  int yas = 0;
  String memleket = "Ankara";
  Asker(this.ad, this.yas) {
    print("Asker sınıfının kurucusu çalıştı");
  }

  void selamla() {
    print("Merhaba adım $ad ve yasim $yas");
  }
}

class Er extends Asker {
  String ad = "Varsayılan";
  int yas = 0;
  Er(String ad, int yas) : super(ad, yas) {
    print("Er sınıfının kurucusu çalıştı");
  }

  void memleketDegistir(String yeniMemleket) {
    super.memleket = yeniMemleket;
  }

  @override
  void selamla() {
    print("Er sınıfından selamlar");
  }
}
