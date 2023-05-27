/* Set: küme
* Bir diğer koleksiyon yapısı da Set yapısıdır.
* List den en önemli farklı elemanları sıralı olarak tutmaz, bu durumda list lerde oldugu gibi indexleri kullanamayız
* Bir diğer farkı ise bir elemandan sadece bir tane olur yani her bir eleman birbirinden farklıdır.
index olmadan elemanları kontrol etmek için contains methodu kullanılabilir. onun dışında listelerdeki methodlar set için de geçerlidir.
*/
main(List<String> args) {
  Set<String> isimler = Set();
  isimler.add("emre");
  isimler.add("hasan");
  isimler.add("ali");
  isimler.add("emre");
  isimler.add("emre");
  isimler.add("fatih");

  if (isimler.contains("emre")) {}

  bool sonuc = isimler.remove("emre");
  print("sonuc : " + sonuc.toString());

  print("*********");

  for (String s1 in isimler) {
    print("isim : $s1");
  }

  Set<int> numara = Set.from([1, 2, 3, 4, 2, 1, 1, 4, 2, 1, 3, 5, 6, 4]);
  List<int> ciftSayilar = [0, 2, 4, 6, 8, 10, 8, 6, 4, 2, 0];

  for (int s1 in numara) {
    print("no: $s1");
  }

  numara.clear();
  numara.addAll(ciftSayilar);
  for (int s1 in numara) {
    print("add all dan sonra no: $s1");
  }
}
