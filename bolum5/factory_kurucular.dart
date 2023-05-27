void main(List<String> args) {
  Ogrenci ogr1 = Ogrenci(5, "emre");
  Ogrenci ogr2 = Ogrenci.idSiz("hasan");
  Ogrenci ogr3 = Ogrenci.factoryKurucu(-9, "ayse");

  print(ogr3.id);
  print(ogr3.isim);

  int sayi = toplam();
}

int toplam() {
  return 3 + 5;
}

class Ogrenci {
  int id = 0;
  String isim = "";
  Ogrenci(this.id, this.isim) {
    print("Varsayılan kurucu çalıştı.");
    //Varsayılan kurucularda isimlendirilmiş kurucularda return kullanılamaz bu yasaktır
  }
  Ogrenci.idSiz(this.isim) {
    print("isimlendirilmiş kurucu çalıştı");
  }

  factory Ogrenci.factoryKurucu(int id, String isim) {
    if (id < 0) {
      return Ogrenci(5, isim);
    } else {
      return Ogrenci(id, isim);
    }
  }
}
