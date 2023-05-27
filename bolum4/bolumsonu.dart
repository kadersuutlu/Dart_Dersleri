/*
1- Sehirleri tutan bir liste olusturun, 4 tane il ekleyip sırasıyla ekrana yazdırın. 
2- Keyleri string, değerleri dynamic olan bir map olusturun. Bu map yapısında bilgisayarınızın işlemci çekirdek sayısını, ram miktarını ve ssd olup olmadıgı bilgisini tutun ve ekrana yazdırın. 
3- Her bir elemanında keyleri string, value'leri dynamic map olan bir liste olusturun.
Bu listedeki her bir eleman il adını, ilçe sayısını, plaka kodunu tutsun. Sonrasında da bu listeyi okunaklı bir şekilde yazdırın
Örnek listenin 1. elemanında bulunan il ankara, plaka kodu:06, ilçe sayısı:10(değerler rastgele olabilir).
4- 5 elemanlı iki farklı liste olusturun. Elemanlar 0-50'ye rastgele şekilde olusturulsun Bu elemanları tek bir listeye aktarın
Olusan son listenin elemanlarının karelerini tutan set yapısı olusturup ekrana yazdırın.
5- Kullanıcıdan aldıgınız integer pozitif sayıları bir listede tutun, kullanıcı değerini girdiğinde girilen sayıların ortalamasını ekrana yazdırın.
*/

import 'dart:math';

void main(List<String> args) {
  //Soru1
  List<String> sehirler = List.filled(4, '');
  sehirler[0] = 'bursa';
  sehirler[1] = 'ankara';
  sehirler[2] = 'izmir';
  sehirler[3] = 'istanbul';

  for (int i = 0; i < sehirler.length; i++) {
    print(sehirler[i]);
  }

  //soru 2
  Map<String, dynamic> ozellik = {"islemci": 4, "ram": 8, "ssd": true};
  for (var anahtar in ozellik.entries) {
    print("${anahtar.key} : ${anahtar.value}");
  }

  //soru3  ----Önemlii
  List<Map<String, dynamic>> iller = <Map<String, dynamic>>[];
  Map<String, dynamic> eklenecekSehir1 = Map<String, dynamic>();
  eklenecekSehir1['il_adi'] = 'ankara';
  eklenecekSehir1['ilce_sayisi'] = 10;
  eklenecekSehir1['plaka_kodu'] = 6;
  Map<String, dynamic> eklenecekSehir2 = <String, dynamic>{};
  eklenecekSehir2['il_adi'] = 'bursa';
  eklenecekSehir2['ilce_sayisi'] = 6;
  eklenecekSehir2['plaka_kodu'] = 16;
  var eklenecekSehir3 = <String, dynamic>{};
  eklenecekSehir3['il_adi'] = 'istanbul';
  eklenecekSehir3['ilce_sayisi'] = 16;
  eklenecekSehir3['plaka_kodu'] = 34;
  iller.add(eklenecekSehir1);
  iller.add(eklenecekSehir2);
  iller.add(eklenecekSehir3);

  iller.add({'il_adi': 'izmir', 'ilce_sayisi': 9, 'plaka_kodu': 35});

  for (int i = 0; i < iller.length; i++) {
    var oankiSehirMapYapisi = iller[i];
    print(
        "Listenin ${i + 1}. elemanındaki sehir : ${oankiSehirMapYapisi['il_adi']} ilçe sayisi : ${oankiSehirMapYapisi['ilce_sayisi']} plaka kodu : ${oankiSehirMapYapisi['plaka_kodu']}");
  }

  //soru 4
  List<int> liste1 = List.filled(5, 0);
  var liste2 = List.filled(5, 0);
  List<int> sonListe = <int>[];
  Set<int> sonSet = <int>{};

  for (int i = 0; i < 5; i++) {
    liste1[i] = Random().nextInt(50);
    liste2[i] = Random().nextInt(50);
  }

  print(liste1);
  print(liste2);

  sonListe = [...liste1, ...liste2];
  print(sonListe);

  for (var gecici in sonListe) {
    sonSet.add(gecici * gecici);
  }
  print(sonListe);
  print(sonListe.length);
  print(sonSet);
  print(sonSet.length);

  //soru 5
  int girilenNot = 0;
  List<int> girileNotlar = <int>[];
  List<int> girileNotlar2 = List.empty(growable: true);
  do {
    print("Lütfen notunuzu giriniz, çıkış iin -1");
    //girilenNot=int.parse(stdin.readLineSync()!);
    if (girilenNot != -1) {
      girileNotlar.add(girilenNot);
    }
  } while (girilenNot != -1);

  print("Kaç not girildi ${girileNotlar.length}");
  double ortalama = listeninOrtBul(girileNotlar);
  print("Notların ortalaması $ortalama");
}

double listeninOrtBul(List<int> liste) {
  int toplam = 0;
  for (int i = 0; i < liste.length; i++) {
    toplam = toplam + liste[i];
  }

  return toplam / liste.length;
}
