/* private değişken ve fonksiyonlar: Bir sınıftaki değişken ve metotları bazen erişime kapatmak isteyebiliriz. Bu durumlarda  _ işareti ile bunları saklarız.
*
* getter metotlar: sınıf değişkenlerini okumak için kullanılan özel fonksiyonlardır.
* Bu metotların amacı özellikle private yani dış dünyanın erişimine kapatılmış değişkenlerin 
* gerekli olduğunda okunmasını sağlamaktır.
* setter metotlar: sınıf değişkenlerine veri atamak için kullanılır. Bu metotların amacı
özellikle private yani dış dünyanun erişimine kapatılan değişkenlere veri atamaktır, ayrıca veri ataması yapılırken gerekli olan kontrollerin ve işlemlerin yapılması için kullanılır.

Setter ın getter da farkı = dedikten sonra değer atnabilir.
*/
import 'musteri.dart';
import 'veritabani_islemleri.dart';

void main(List<String> args) {
  Musteri m1 = Musteri(123);

  m1.bilgiYazdir();
  m1.musteriNoAta = 952;

  print(m1.musteriNoSoyle);

  VeritabaniIslemleri db = VeritabaniIslemleri();

  VeritabaniIslemleri db2 =
      VeritabaniIslemleri.loginWithNameandPassword("kader", "123");
  /*  print(db.kullaniciAdi);
  print(db.sifre);
  db.sifre = "5656"; */

  bool sonuc = db.baglan();
  if (sonuc) {
    print("Baglandım");
  } else {
    print("Baglanmadı");
  }
}
