/*
Flutter'da özellikle widget'larda kullanılır.
ternary if yazımı ile kısa bir şekilde şart belirten ifadeler yazılabilir. Kullanımı 
koşul ? expressionl expression2
eğer koşul doğru ise expressionl değeri, yanlış ise expression2 değeri kullanılır.
kısa kullanım ile değişkenlerin null değerde olup olmadıkları da kontrol edilebilir 
expressionl ?? expression2
burda expressionl eğer null değilse kullanılır, eğer null ise expression2 kullanılır.
*/
void main(List<String> args) {
  int sayi1 = 7;
  int sayi2 = 6;
  int kucukSayi;
/*
  if (sayi1 < sayi2) {
    kucukSayi = sayi1;
  } else {
    kucukSayi = sayi2;
  }
  */

  //iki kullanımda aynı işlevi yapar.
  sayi1 < sayi2 ? kucukSayi = sayi1 : kucukSayi = sayi2;
  kucukSayi = sayi1 < sayi2 ? sayi1 : sayi2;
  print("kucuk sayı: $kucukSayi");

  String? ad = null;
  String? soyad = 'sutlu';
  String? mesaj;

  mesaj = ad ?? soyad;
  print("Merhaba $mesaj");
}
