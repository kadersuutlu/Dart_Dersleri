void main(List<String> args) {
  List<int> sayilar = [10, 5, 4, 3, 11, 9, 15];

  if (sayilar.isNotEmpty) {
    print(sayilar.first);
    print(sayilar.last);
    print(sayilar.isEmpty);
  }

  print("Boş mu:" + sayilar.isEmpty.toString());

  print("Eleman SAyisi: ${sayilar.length}");
  print("Ters sirada ${sayilar.reversed}"); //ana yapı bozulmuyor
  print(sayilar);

  sayilar.add(23);
  print(sayilar);
  sayilar.remove(3); //verilen elemanı siler
  print(sayilar);
  sayilar.removeAt(1);
  print(sayilar); //verilen indexteki elemanı siler

  //sayilar.clear(); bütün elemanlari siler
  print(sayilar);

  if (sayilar.contains(9)) {
    print("Listede 9 var");
  } else {
    print("Listede 9 yok");
  }
  print(sayilar);

  print(sayilar.elementAt(2));
  print(sayilar.indexOf(11));
  sayilar.shuffle(); //ana yapıyı bozar. Elemanları karıştırır.
  print(sayilar);
}
