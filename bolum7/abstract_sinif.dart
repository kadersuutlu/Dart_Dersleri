/* Abstract soyut sınıf: Sınıflar arasında soyutlama yapmak için kullanılır.
* Abstract sınıflardan nesne üretilemez abstract sınıflarda normal ve abstract methodlar olur
* abstract methodlar alt sınıflarca override edilmek zorundadır.
*
* Bir sınıfta bir tane abstract method varsa o sınıf mutlaka abstract tanımlanmalıdır.*/
void main(List<String> args) {
  Sekil s1 = Kare(4); //Her kare bir şekildir.
  print(s1.alanHesapla());
  print(s1.cevreHesapla());
  s1.selamla();

  Sekil s2 = Dikdortgen(4, 6); //Her kare bir şekildir.
  print(s2.alanHesapla());
  print(s2.cevreHesapla());
  s2.selamla();

  List<Kare> tumKareler = [];
  List<Dikdortgen> tumKDikdortgenler = [];

  List<Sekil> tumSekiller = [];
  tumSekiller.add(s1);
  tumSekiller.add(s2);

  test(s1);
  test(s2);
}

void test(Sekil sekil) {
  sekil.selamla();
}

//Soyut örnek
abstract class Sekil {
  double alanHesapla();

  double cevreHesapla();
//abstract class larda sadece bir tane gövdesi olmayan metot olması yeterlidir
  void selamla() {
    print("Ben sekil sınıfındanım");
  }
}

//Somut örnek
class Kare extends Sekil {
  int kenar;

  Kare(this.kenar);
  @override
  double alanHesapla() {
    return kenar * kenar.toDouble();
  }

  @override
  double cevreHesapla() {
    return kenar * 4.toDouble();
  }

  void selamla() {
    print("Ben kare sınıfındanım");
  }
}

class Dikdortgen extends Sekil {
  int kisaKenar, uzunKenar;

  Dikdortgen(this.kisaKenar, this.uzunKenar);

  @override
  double alanHesapla() {
    return kisaKenar * uzunKenar.toDouble();
  }

  @override
  double cevreHesapla() {
    return 2 * (kisaKenar + uzunKenar).toDouble();
  }

  void selamla() {
    print("Ben dikdörtgen sınıfındanım");
  }
}
