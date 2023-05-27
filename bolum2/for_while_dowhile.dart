void main(List<String> args) {
  //kaç kere döneceğimi bildiğim  durumlarda
  for (int i = 0; i <= 10; i++) {
    print("Kader Sutlu");
    if (i % 2 == 0) {
      print("$i");
    }
  }

//gelişmiş for yapısı:
  List isimListesi = ["emre", "kader", "ali"];
  for (String gecici in isimListesi) {
    print("$gecici");
  }

  for (var i = 0; i < isimListesi.length; i++) {
    print("Okunan eleman  " + isimListesi[i]);
  }

  int sayac = 0;
  /*sonsuz döngü:
  while (sayac < 3) {
    print("okunan sayac degeri $sayac");
  }
  */
  //while önce kontrol sonra yap

  while (sayac < 3) {
    print("okunan sayac degeri $sayac");
    sayac++;
  }
//do-while önce yap sonra kontrol
  /*int sayac2 = 0;
  do {
    print("okunan sayac degeri $sayac2");
  } while (sayac2 < 5);
*/
  //break - continue
  for (var i = 0; i < 10; i++) {
    if (i > 5) {
      break;
    }
    print("i: $i");
  }
  print("------------------------------------");
  for (var i = 0; i < 10; i++) {
    if (i > 5) {
      print("i: $i");
    } else {
      continue;
    }
  }

//döngüye isim verme:
  distakiDongu:
  for (var i = 0; i <= 10; i++) {
    for (var j = 0; j <= 10; j++) {
      print("$i*$j=${i * j}");
      if (i == 2) {
        break distakiDongu;
      }
    }
  }
}
