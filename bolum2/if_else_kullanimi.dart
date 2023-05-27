void main(List<String> args) {
  int sayi = 12;
  num sayi2 = 12;
  //var sayi3 = 16;

  if (sayi > sayi2) {
    print("$sayi büyük $sayi2");
  } else if (sayi < sayi2) {
    print("$sayi2 büyük $sayi");
  } else {
    print("$sayi2 eşittir $sayi");
  }

  int not = 75;
  if (not <= 100 && not >= 88) {
    print("AA");
  } else if (not < 88 && not >= 81) {
    print("BA");
  } else if (not < 81 && not >= 75) {
    print("BB");
  } else if (not < 75 && not >= 70) {
    print("CB");
  } else if (not < 70 && not >= 60) {
    print("CC");
  } else if (not < 60 && not >= 55) {
    print("DC");
  } else if (not < 55 && not >= 50) {
    print("DD");
  } else if (not < 50 && not >= 40) {
    print("FD");
  } else if (not < 40 && not >= 30) {
    print("FF");
  } else {
    print("Kaldı");
  }
}
