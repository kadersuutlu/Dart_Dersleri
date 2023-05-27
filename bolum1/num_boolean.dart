/*num : tamsayı veya ondalıklı bir ifadeyi saklayabilir 
int = tamsayıları saklarken kullanılan veri türüdür
hexadecimal değerleri de saklayabilir. 0xAABBCC
double ondalıklı ifadeler için kullanılan veri türüdür.
exponents değerli saklayabilir, 1.42e5
var anahtar kelime ile de tamsayı veya ondalıklı ifade saklanabilir.
var olarak int deger atandıysa sonrasında double değer atanamaz
değişkenlerimize ilk değerleri atamak zorundayız, null değer kabul edilmez.
null değerlerin kabul edilmesini istiyorsak int?, double? bool? gibi farklı değişken tanımları 
yapmamız gerekir.
boolean = true/false değerleri alır
*/
void main(List<String> args) {
  int yas = 34;
  print(yas);
  yas = 44;
  print(yas);

  num yil = 2000;
  print(yil);

  double sayi = 52;
  print(sayi);

  int kilo = 44.4.toInt(); //44.4 sayısını integer'a çevirir.
  print(kilo);

  var sayi2 = 56;

  int numara; //null değer: initialize edilmemiş, değer atanmamış değişken

  double? s1 = null;
  print(s1); //üzerinde işlem yapılamaz.

  int hexadecimalSayi = 0xAABBCC;
  print(hexadecimalSayi);
}
