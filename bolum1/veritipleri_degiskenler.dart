/* 
VERI TİPLERİ VE DEĞİŞKEN KAVRAMI
DEGİSKEN: Bir işlemi gerçekleştirmek için yapılması gereken ilk şey o veriyi hafızaya 
almaktır. İşlem yapmak istediğimizde de
veriyi hafızadan çağırıp gerekli işlemleri yerine getirmektir. Hafızadaki verirleri ifade
 etmek için programlama dillerinde
değişkenleri kullanırız. Özetle vermek gerekirse; programlama dilinde işlediğimiz verileri 
bilgisayarın
hafızasında tutmak için yapmış olduğumuz tanımlamalardır.
Tutulan verinin türüne göre farklı veri tipleri vardır. Dart built-in olarak şu tipleri içerir.
- Number
  - int tamsayılar
  - double ondalıklı sayılar
- String metinsel ifadeler
- Boolean true/false
Tüm veri tipleri Object yani nesneleridir.
var anahtar kelimesi variable anlamına gelir ve veri türünü belirtmek istemiyorsak kullanırız. 
Atanan ifadeye göre otomatik olarak türü belirtir.
*/

void main(List<String> args) {
  print("Kader");
  int yas = 22;
  double ortalama = 5.6;
  num yil = 2000; //hem int hem double değer alır.
  String ad = "Kader";
  print(yas);
  print("yas");
  print(ad);

  bool erkekMi = false;
  bool issizMi = true;

  print(erkekMi);
  print(issizMi);

  var okul = "AEU"; //variable
  var okulNo = 031;
  var kedisiVarMi = true;

  print(okul);
  print(okulNo);
  print(kedisiVarMi);
}
