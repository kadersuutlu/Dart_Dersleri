//OOP Giriş
/**
* Sınıf
Kendi veri türlerimiz veya soyut olan taslaklara denir. Kendi içinde değişkenlere ve methodlara sahiptir
* Istedigimiz bir nesnenin veya varlığın bilgisayar dillerinde tanımıdır.
* Nesne : Olusturulan soyut ve taslak olan sınıflardan üretilen örneklere denir.
* Nesnelere sınıfın sahip olduğu değerlere ulaşmak için kullandığımız referanslardır diyebiliriz.
*
* Sınıf eğer bir uzaktan kumandalı araba ise nesne onu kontrol ettiğimiz kumandadır. */

void main(List<String> args) {
  Ogrenci ogrenci1 = Ogrenci(); //nesne - instance
  ogrenci1.ogrNo = 031;
  ogrenci1.ogrAd = "Kader";
  ogrenci1.aktifMi = true;
  Ogrenci ogrenci2 = Ogrenci();
  var ogrenci3 = Ogrenci();
  dynamic ogrenci4 = Ogrenci();
}

class Ogrenci {
  //sınıf adı büyük harfle başlamalı
  //instance variable
  int? ogrNo;
  String? ogrAd;
  bool? aktifMi;

  void dersCalis() {
    print("Öğrenci ders çalışır");
  }
}
