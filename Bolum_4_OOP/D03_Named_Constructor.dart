// isimlendirilmis constructor
void main(List<String> args) {
  var araba1 = Araba("Toyota", "Corolla", "Benzin & LPG", 100);
  print(araba1);
  // Eger istenilen parametrelerden birini girmek istemiyorsak Named Contructor(isimlendirilmis) olustururuz.
  var araba2 = Araba.markasiz("A6", "Benzin", 0);
  var araba3 = Araba.modelsiz("Mercedes", "Dizel", 150);
  print(araba2);
  araba3.bilgileriYazdir();
}

class Araba {
  String? model;
  String? marka;
  int? km;
  String? yakit;

  Araba(this.marka, this.model, this.yakit, this.km) {
    print("---Araba Bilgileri---");
    print("$marka ve $model model arabaniz $km km de $yakit tüketir.");
  }
  Araba.markasiz(this.model, this.yakit,
      this.km); //Named Constructor. marka degirini girmek istemiyoruz
  Araba.modelsiz(this.marka, this.yakit,
      this.km); //named constructor.model yilini girmek istemimyoruz
  void bilgileriYazdir() {
    print(
        "Arabanin bilgileri; modeli ${model} markasi $marka yakiti $yakit ve km si $km");
  }
}
