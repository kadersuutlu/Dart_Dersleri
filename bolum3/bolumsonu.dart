/*
SORU1: Parametre olarak bir tane int sayı alan fonksiyon yazınız.
Bu fonksiyon aldığı değere kadar olan çift sayıların toplamını geriye döndürsün..
SORU2: Daire alanını hesaplayan fonksiyonu yazınız. PI sayısı opsiyonel olmalı Eğer PI sayısı verilmediyse varsayılan olarak 3,14 olarak hesaplama yapın.
SORU3: Bir ücgenin kenarlarını isimlendirilmiş parametre olarak alan fonksiyon yazınız. Bu fonksiyon kenar değerlerine göre bu üçgenin çeşit kenar ikiz kenar veya eşkenar olduğunu ekrana yazdırsın, geriye bir değer döndürmesin.
*/

void main(List<String> args) {
  print(ciftToplam(10));
  print(daireAlanHesapla(5, 3));
  print(daireCesidi("Eşkenar", "İkizkenar", "Çeşitkenar"));
  ucgeninCesidiniSoyle(birincikenar: 3, ucuncukenar: 8, ikinciKenar: 3);
}

int ciftToplam(int sayi) {
  int toplam = 0;
  for (int i = 0; i <= sayi; i++) {
    if (i % 2 == 0) {
      toplam = toplam + i;
    }
  }
  return toplam;
}

double daireAlanHesapla(double r, [double pi = 3.14]) {
  return pi * r * r;
}

String daireCesidi(String eskenar, String ikizkenar, String cesitKenar) {
  int kenar1 = 5, kenar2 = 4, kenar3 = 5;
  String cesit;
  if (kenar1 == kenar2 && kenar1 == kenar3) {
    cesit = eskenar;
  } else if (kenar1 != kenar2 && kenar1 != kenar3 && kenar2 != kenar3) {
    cesit = cesitKenar;
  } else {
    cesit = ikizkenar;
  }
  return cesit;
}

void ucgeninCesidiniSoyle(
    {int birincikenar = 1, int ikinciKenar = 1, int ucuncukenar = 1}) {
  if (birincikenar == ikinciKenar && birincikenar == ucuncukenar) {
    print("Bu üçgen eşkenar üçgendir");
  } else if (birincikenar == ikinciKenar ||
      birincikenar == ucuncukenar ||
      ikinciKenar == ucuncukenar) {
    print("Bu üçgen ikiz kenardır");
  } else {
    print("Bu üçgen çeşit kenar bir üçgendir");
  }
}
