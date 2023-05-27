/*Soru 1
CemberDaire isimli sınıf oluşturun. Bu sınıfın yarıçap alan kurucusu olmalı. Ayrıca cevre ve alanını hesaplayan metotlar olmalı. (Pi sayısı 3,14 alın)
Soru 2
Ogrenci isimli sınıf oluşturun. Bu sınıfta ogrencinin idsi ve not değeri tutulmalı. 100 elemanlı bir listede id ve not değerlerini rastgele olusturarak bu ogrencileri saklayın ve bu ogrencileri yazdıran metotu yazın.
*/
import 'dart:math';

import 'cember_daire.dart';
import 'ogrenci.dart';

void main(List<String> args) {
  CemberDaire c1 = CemberDaire(4);
  print("Alan ${c1.alan()}");
  print("Çevre ${c1.cevre()}");

  Ogrenci ogr1 = Ogrenci(id: 5, not: 10);
  List<Ogrenci> tumOgrenciler = List.filled(100, Ogrenci());

  ogrenciListesiDoldur(tumOgrenciler);
  //print(tumOgrenciler[5].not);
  //print(tumOgrenciler[5].id);

  for (Ogrenci oankiOgrenci in tumOgrenciler) {
    print(oankiOgrenci);
  }

  print("Tüm ogrencilerin ort:" + ogrOrtalama(tumOgrenciler).toString());
}

void ogrenciListesiDoldur(List<Ogrenci> liste) {
  for (int i = 0; i < liste.length; i++) {
    liste[i] = Ogrenci(id: Random().nextInt(1000), not: Random().nextInt(100));
  }
}

double ogrOrtalama(List<Ogrenci> liste) {
  int toplam = 0;
  for (Ogrenci oankiOgrenci in liste) {
    toplam = toplam + oankiOgrenci.not;
  }
  return toplam / liste.length;
}
