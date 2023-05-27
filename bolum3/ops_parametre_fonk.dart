/* methodlarımıza geçtiğimiz parametrelerin isteğe bağlı olmasını yani verilse de olur verilmese de olur gibi durumlarda süslü ve köşeli parantez kullanırız.
* Eğer köşeli parantez [] kullanırsak bu ilgili parametrelerin methoda gönderilmesi zorunluluğunu ortadan kaldırır.
* Eğer süslü parantez {} kullanırsak burda da parametreler isteğe bağlıdır ama bu parametreleri belirtirken sıralama önemini kaybeder ve de parametreleri geçerken isimlerini vermek zorunda kalırız.
İkisi aynı anda kullanılamaz!!!!!!!!!!!!!

* Ayrıca method tanımlarında parametrelere = diyerek varsayılan değerler atayabiliriz. Bu değerler sayesinde eğer kullanıcı method parametrelerini atamamışsa bu varsayılan değerler kullanılır.
*/

void main(List<String> args) {
  //int toplam = sayiTopla(4, 5, 6);
  //print("Toplam $toplam");

  //int toplam = sayiTopla(2, 3); //sayi 3 ü ister yazarım ister yazmam
  //print("Toplam $toplam");

  //int toplam = sayiTopla(4, 5, 6);
  //print("Toplam $toplam");

  //int toplam = sayiTopla(sayi2: 5, sayi3: 4, sayi1: 8);
  //print(toplam);

  print(hacimHesapla(boy: 5, en: 3, yukseklik: 8));
}

//required parameter
/*
int sayiTopla(int sayi1, int sayi2, int sayi3) {
  return sayi1 + sayi2 + sayi3;
}

*/
//optinal
/*int sayiTopla(int sayi1, int sayi2, [int sayi3]) {
  return sayi1 + sayi2 + sayi3;
}
*/

/*
int sayiTopla(int sayi1, [int sayi2=0, int sayi3=0]) {
  return sayi1 + sayi2 + sayi3;
}
*/

//optinal named
int sayiTopla({int sayi1 = 0, int sayi2 = 0, int sayi3 = 0}) {
  return sayi1 + sayi2 + sayi3;
}

int hacimHesapla({int en = 1, int boy = 1, int yukseklik = 1}) {
  return en * boy * yukseklik;
}
