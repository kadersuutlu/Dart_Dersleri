void main(List<String> args) {
  sayiTopla();
  int fark = sayiCikar(15, 4);
  print("Fark $fark");
  print("Çarpım: " + sayiCarp(12, 6).toString());
  print("Max: " + maxBul(12, 6).toString());
  print("Max: " + maxBul(10, 8).toString());
  print("Min: " + MinBul(7, 15).toString());
}

void sayiTopla() {
  int sayi1 = 10, sayi2 = 5;
  print("Toplam: ${sayi1 + sayi2}");
}

int sayiCikar(int s1, int s2) {
  return (s1 - s2);
}

//Kısa Gösterim: Fat Arrow
//geriye döndürse bile return kullanılmaz. tek satırlık kodda kullanılır.
int sayiCarp(int s1, int s2) => s1 * s2;

int maxBul(int s1, int s2) {
  if (s1 < s2) {
    return s2;
  } else {
    return s1;
  }
}

int MaxBul(int s1, int s2) => s1 < s2 ? s2 : s1;

int MinBul(int s1, int s2) => s1 < s2 ? s1 : s2;
