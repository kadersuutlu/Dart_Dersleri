/*
* SORU 1 : 3 tane double değişken olusturup bunların ortalamasını yazdıran programı yazınız 
* SORU 2: Kenarlarını girdiğiniz üçgenin çeşidini yazdıran programı yazınız.
* SORU 3 : Vize ve final notlarını alıp dersi geçip geçmediğini bulan programı yazınız
(geçme notu alt değeri 50, vizenin %40 finalin %601 alınır.)
* SORU 4: Kendi adınızı ekrana 5 kere yazdıran uygulamayı tüm döngü ifadeleriyle yazınız.
* SORU 5: 1'den 100'e kadar olan ve 15 ile tam bölünen sayıların karelerini ekrana yazdırınız. 
* SORU 6: Tanımlanan int bir sayının faktoriyelini bulan uygulamayı yazınız.
*/

void main(List<String> args) {
/*  //1
  double sayi1 = 12.4;
  double sayi2 = 13.1;
  double sayi3 = 11.8;
  double sonuc = (sayi1 + sayi2 + sayi3) / 3;
  print(sonuc);

//2
  int kenar1 = 3, kenar2 = 4, kenar3 = 5;
  if (kenar1 == kenar2 && kenar1 == kenar3) {
    print("Eşkenar");
  } else if (kenar1 != kenar2 && kenar1 != kenar2 && kenar2 != kenar3) {
    print("Çeşitkenar");
  } else {
    print("İkizkenar");
  }

//3
  int vizenot = 60;
  int finalnot = 70;
  double ort = 0;
  ort = (vizenot * (40 / 100) + finalnot * (60 / 100));
  if (ort >= 50) {
    print("Geçti");
  } else {
    print("Kaldı");
  }

//4
  String name = "Kader";
  for (int i = 0; i < 5; i++) {
    print(name);
  }

  int sayac = 0;
  while (sayac < 5) {
    print(name);
    sayac++;
  }

  int kontrol = 0;
  do {
    print(name);
    kontrol++;
  } while (kontrol < 5);

//5
  for (var i = 1; i <= 100; i++) {
    if (i % 15 == 0) {
      print(i * i);
    }
  }
*/
//6
  int fact = 5;
  int son = 1;
  int say = 1;
  while (say <= fact) {
    son = son * say;
    say++;
  }
  print("--------------");
  print(son);
}
