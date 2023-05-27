void main(List<String> args) {
  //Aritmetik Operatörler
  double sayi1 = 9;
  double sayi2 = 6;
  print("$sayi1 + $sayi2 toplamı ${sayi1 + sayi2}");
  print("$sayi1 - $sayi2 toplamı ${sayi1 - sayi2}");
  print("$sayi1 * $sayi2 toplamı ${sayi1 * sayi2}");
  print("$sayi1 / $sayi2 toplamı ${sayi1 / sayi2}");
  print("$sayi1 % $sayi2 toplamı ${sayi1 % sayi2}"); // mod : kalan

  //Atama ve Karşılaştırma Operatörleri
  double sayi3 = 5;
  sayi3 = sayi3 + 5;
  print(sayi3);
  sayi3 += 5; // sayi3 = sayi3 + 5
  print(sayi3);

  sayi3 %= 4;
  print(sayi3);

  // < , > , <= , >= , !=
  double sayi4 = 9;
  double sayi5 = 5;
  if (sayi4 <= sayi5) {
  } else {
    print("Sayi $sayi4 küçük ve eşit değil $sayi5");
  }

  String isim = "emre";
  String soyIsim = "emre";

  if (isim != soyIsim) {
    print("İsim soyisimle aynı değil");
  } else {
    print("İsim soyisimle aynı değerde");
  }

//Mantıksal Operatorler
//&& || !
  bool kosul1 = true;
  bool kosul2 = false;
  print(kosul1 && kosul2);
  print(kosul1 || kosul2);
  print(!kosul1);
  print(!kosul2);

  //Arttırma Azaltma Operatörleri
  int sayi7 = 10;
  sayi7 = sayi7 = 10;
  sayi7 += 5;
  print(sayi7);

  sayi7++;
  print(sayi7);

  int sayi8 = 10;
  print(sayi8++); //önce kullan sonra arttır
  print(++sayi8); //önce arttır sonra arttır

//işlem önceliği :
//1  ()
//2   ++   --  değişkenden önce ise
//3   *  /
//4   +  -
//5   =
//6  ++  --  değişenden sonra ise

  int s1 = 10, s2 = 5;
  double sonuc = 0;
  sonuc = ((s1 + s2 * 3 - s2) + s2 - s1 * 5 + s1).toDouble();
  print(sonuc);

  sonuc = (s1 * s2 + 4 / 2) + (s1++ * s2) + (++s1);
  print(sonuc);
}
