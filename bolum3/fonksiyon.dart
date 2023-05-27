/*
Fonksiyon kavramı sayesinde problemlerimizi küçük alt problemlere parçalayarak çok daha okunaklı, hata bulması kolay uygulamalar geliştirebiliriz.
Bir uygulama geliştirirken, bir problemi çözerken o problemde belli bir işi yapan kodları methodlara bölmemiz gerekir.
Bunun için method veya fonksiyon oluşturabiliriz.
Methodlar parametre alabilir veya herhangi bir parametreye sahip olmayabilir.
Methodlar geriye bir değer dönderebilir. Değer döndürmeyen method tanımlarının başına void yazılır. Dart dilinde return ve method geri döndürme veri tipi değeri opsiyoneldir, yani belirtmek zorunda değiliz. (Belirtilmesi önerilir)
*/

void main(List<String> args) {
  cevreyiHesapla(); //değişşkene atanamaz.
  int sonuc = alanHesapla(5, 10);
  print("Alan: $sonuc");
  int hacim = hacimHesapla(8, 9, 10);
  print("Hacim: $hacim");
  print(hacimHesapla(5, 8, 10));
}

//parametresiz fonk.
void cevreyiHesapla() {
  int en = 5, boy = 10;
  int cevre = (en + boy) * 2;
  print("Çevre değeri : $cevre");
}

//parametre alan fonk.
int alanHesapla(int sayi1, int sayi2) {
  //int alan=sayi1+sayi2;
  //print("Alan: ${sayi1 + sayi2}");
  return sayi1 * sayi2;
}

int hacimHesapla(int h, int v, int d) {
  return h * v * d;
}
