/*
Closure özel bir fonksiyondur, Closure ile bir üst kapsamdaki değişkenlerin değerleri değiştirilebilir
*/

//lexical variable scope
void main(List<String> args) {
  var mainDEgiskeni = 1;

  void a() {
    var aDegiskeni = 2;

    void b() {
      var bDegiskeni = 3;
      print(aDegiskeni);
    }
  }

  /* var d = topla();
  var sonuc = d(5);
  print(sonuc); */

  var dondurulenFonk = topla(3);
  var sonuc = dondurulenFonk(4);
  print(sonuc);
}

Function topla(int eleman) {
  return (int deger) => eleman * deger;
}
