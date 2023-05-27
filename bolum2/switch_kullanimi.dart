/*

* switch: ard arda if -else if kullanmak yerine genellikle switch yapısı tercih edilir
* her bir case'den sonra break denilerek switch yapısından cıkılmalıdır.
*switch kullanırken sadece int ve string veri türleri kullanılır, boolean veya double kullanılmaz.
*/

void main(List<String> args) {
  String not = "BA";
  switch (not) {
    case "AA":
      print("not 90 100 arası");
      break;
    case "BA":
      print("notunuz 80 90 arasında");
      break;
    case "BB":
      print("notunuz 75 80 arasında");
      break;
    case "CB":
      print("notunuz 70 75 arasında");
      break;
    case "CC":
      print("notunuz 60 70 arasında");
      break;
    default:
      {
        print("hatali değer");
      }
  }

  int yas = 22;
  switch (yas) {
    case 18:
      print("yaş 18");
      break;
    case 22:
      print("yaş 22");
      break;
    default:
      {
        print("bilinmeyen deger");
      }
  }

  int sayi = 26;
  int bolum = (sayi / 10).toInt();

  switch (bolum) {
    case 3:
      print("Sayi 30 dan büyük");
      break;
    case 2:
      print("Sayi 20 dan büyük");
      break;
    case 1:
      print("Sayi 10 dan büyük");
      break;
    case 0:
      print("Sayi 10 dan küçük");
      break;
  }
}
