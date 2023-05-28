//lambda isimi olmayan fonksiyonlardır.
//Dartta her fonksiyon aslında bir nesnedir.

void main(List<String> args) {
//isimsiz fonksiyon
  Function fonk1 = (int a, int b) {
    int toplam = a + b;
    print(toplam);
  };

  fonk1(5, 8);

  //print(fonk1); //Closure: (int, int) => Null

  String isim = "emre";

  var f2 = (int s) => s * 2;

  var f3 = (int s2) {
    return s2 * 2;
  };

  var sayi = f2(5);
  print(sayi);
  print(f3(6));
}

void sayilariTopla(int a, int b) {
  int toplam = a + b;
  print(toplam);
}
