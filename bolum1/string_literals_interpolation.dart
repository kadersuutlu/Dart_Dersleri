/*
String: Metinsel ifadeler için kullanılan veri türüdür.
Çift tırnak veya tek tırnak ile belirilebilir.
İki stringi birleştirmek için + operatörü kullanılır.
Birden fazla satır süren metinsel ifadeleri birleştirirken kullanmasak da olur. 'ifade 1'
'ifade 2' olarak kullanilabilir.
Interpolation string ifade içinde baska bir string ifadeyi $ifade olarak kullabiliriz. Böylece kullanmak gerekmez.
Eğer ifade birden fazla alana sahipse ${ifade.method} şeklinde kullanılır.
Ayrıca interpolation diğer veri türleri için de geçerlidir.
*/
void main(List<String> args) {
  "kader";
  56;
  true;
  //değişken adı olmadan yazılan her bir satır literaldir

  String isim = "Kader";
  String soyIsim = "Sutlu";
  var kurs = "Dart'ın kullanımı";
  String kursTanimi = "Dart'ı ve Flutter'ı öğreneceğiz";

  print(isim + " " + soyIsim);
  //Interpolaion

  print("$isim $soyIsim");
  print("Soyadım: $soyIsim " + "karakter sayisi: " + soyIsim.length.toString());
  //toString : Stringe çevirme
  print("İsmin Karakter sayisi ${isim.length}");

  double en = 10;
  double boy = 12;

  print(
      "Eni ${en.toInt()} ve boyu ${boy.toInt()} olan dikdörtgenin alani ${(en * boy).toInt()}'dir.");
}
