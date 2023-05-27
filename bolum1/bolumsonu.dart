/*1- Adınızı, soyadınızı ve yaşınızı farklı değişkenlerde saklayıp, ekrana "Benim adım emre altunbilek, yaşım 34 ve tüm ismimdeki karakter sayısı: 15'tir" yazdırın
2- Bir üçgenin tüm kenarlarını değişkenlerde saklayıp çevresini ekrana yazdırın örnek birinci kenarı 3, ikinci kenarı 4, üçüncü kenarı 5 olan üçgenin çevresi 12dir.*/
void main(List<String> args) {
  String ad = "Kader";
  String soyad = "Sutlu";
  int yas = 22;
  print(
      "Benim adım $ad $soyad, yaşım $yas ve tüm ismimdeki karakter sayisi: ${ad.length + soyad.length}'dur.");

  int kenar1 = 3;
  int kenar2 = 4;
  int kenar3 = 5;
  print(
      "Birinci kenari $kenar1, ikinci kenarı $kenar2, üçüncü kenari $kenar3 olan üçgenin çevresi ${kenar1 + kenar2 + kenar3}'dir.");
}
