void main(List<String> args) {
  Kisi emre = Kisi("emre", 34);
  emre.kendiniTanit();

  Calisan hasan = Calisan("hasan", 34, 3000);
  hasan.kendiniTanit();
}

class Kisi {
  String isim;
  int yas;

  Kisi(this.isim, this.yas);

  void kendiniTanit() {
    print("Benim adım $isim, yasim $yas");
  }
}

class Calisan extends Kisi {
  /* Calisan(){

  } */
  int maas;
  Calisan(String name, int age, this.maas) : super(name, age);

  @override
  void kendiniTanit() {
    super.kendiniTanit();
    print("Maasım da $maas");
    //print("Benim adım $isim, yasim $yas, maasım $maas");
  }
}
