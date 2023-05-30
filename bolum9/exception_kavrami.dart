void main(List<String> args) {
  print("program başladı");

//Problem Occurs -> Create Exception -> Throw Exception -> Handle Exception
  try {
    int sayi = 100 ~/ int.parse("emre");
    print(sayi);
  } on IntegerDivisionByZeroException {
    print("Bölen sıfır olamaz");
  } on FormatException catch (e) {
    print(e);
  } catch (e) {
    print("Hata çıktı: ${e}");
  } finally {
    print("İşlem bitti");
  }

  print("Program bitti");
}
