import 'dart:io';

void main(List<String> args) {
  print("Anne çocuğu ekmek almaya yollar");
  print("Cocuk ekmek almak için evden cikar");
  Future<String> sonuc = uzunSurenIslem();

  sonuc.then((String value) => print(value)).catchError((hata) {
    print(hata);
  }).whenComplete(() => print("Ekmek alma işlemi bitti"));

  print("Peynir zeytin hazirlanir");
  print("Kahvalti hazir");
}

//thread
//Olası string deger = Future
Future<String> uzunSurenIslem() {
  Future<String> sonuc = Future.delayed(Duration(seconds: 2), () {
    //return ("Cocuk ekmekle eve girer.");
    throw Exception("Bakkalda ekmek kalmamış");
  });
  return sonuc;
}
