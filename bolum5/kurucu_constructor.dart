/* Farklı türde kurucu olusturabiliriz.
*
1-Default : Sınıf adının yanına () dediğimizde çalışan ve de sınıf adıyla aynı olan methoddur. Ogrenci emre=new Ogrenci() dediğimizde aslında default kurucu çalışır.
* Default constructor sınıfın içinde eğer elle yazıp belirtmesek bile olan Ogrenci(){} şeklinde tanımlı boş bir methoddur.
* Istersek bunu çeşitli durumlar için kullanabiliriz. Bu method her nesne üretiminde ilk olarak çalışan methoddur.
Kurucu methodların geri dönüş tipi olmaz.
2- Parametreli Kurucu Method: Aslında default constructorın parametre almış haline denir. Ogrenci emre=new Ogrenci ("emre");
Dart dilinde method overloading olmadığı için sadece ya default yapıcı ya da parametreli yapıcı olmalıdır.
* 3- Named (Isimlendirilmiş) Sınıf içerisinde
SinifAdi.methodAdi(){
buraya kodlar gelir.
}
//Istediniz sayıda isimlendirilmiş kurucu oluşturabilirsiniz.
//
*/
void main(List<String> args) {
  Araba araba1 = Araba(2020, "Honda", true);
  /* araba1.modelYili = 2020;
  araba1.marka = "Honda";
  araba1.otomatikMi = true; */
  araba1.bilgiGoster();
  araba1.modelYili = 2021;
  araba1.bilgiGoster();

  var araba2 = Araba(2019, "Reno", false);
  araba2.bilgiGoster();

  var araba3 = Araba(2021, "BMW", true);
  araba3.bilgiGoster();
  araba3.yasHesapla();

  var araba4 = Araba.markasizKurucuMetot(2015, false);
  var araba5 = Araba.modelYiliOlmayanKurucuMetot("Suzuki", true);
  araba5.bilgiGoster();
  araba5.yasHesapla();
}

class Araba {
  int? modelYili;
  String? marka;
  bool? otomatikMi;

/*   Araba() {
  //parametresiz kurucu metot
    //her yeni bir nesne ürettiğimizde otomatik çalışır. Biz bu metotu yazmasak bile kendi otomatik çalışır.
    print("Kurucu metot");
  } */

  Araba(this.modelYili, this.marka, this.otomatikMi) {
    print("Kurucu metot");
  }
  Araba.markasizKurucuMetot(this.modelYili, this.otomatikMi);
  Araba.modelYiliOlmayanKurucuMetot(String marka, bool otomatikMi) {
    this.otomatikMi = otomatikMi;
    this.marka = marka;
  }

  /* Araba(int y, String m, bool o) {
    //parametre alan kurucu metot
    print("Kurucu metot");
    /*this.modelYili=modelYili;
    this.marka=marka;
    this.otomatikMi=otomatikMi;*/
    
    /*modelYili=y;
    marka=m;
    otomatikMi=o;*/

    //this parametreler ve instance variable dakilerin isimleri aynıysa kullanımını zorunlu kılar
  }
*/
  void bilgiGoster() {
    print(
        "Arabanın model yılı ${modelYili}, markası ${marka} otomatik mi ${otomatikMi}");
  }

  void yasHesapla() {
    if (modelYili != null)
      print("Arabanın yaşı ${2023 - modelYili!}");
    else
      print("Model yılı olmadığından yaş hesaplanamadı");
  }
}
