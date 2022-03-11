import 'D01_OOP.dart';

void main(List<String> args) {
  //this atahtar kelimesinin  kullanimi
  var opel = Araba(2019, "Opel Astra", true, "Benzin & LPG");
  print(opel);
  opel.yasHesapla();
}

class Araba {
  int?
      model; // ? null olabilecegini gosterir. varsayilan deger atamamamk icin bu sekilde kullandik.
  String? marka;
  bool? vites;
  String? yakit;

  void yasHesapla() {
    print(
        "Arabanin Yasi :${2022 - model!}"); // ! kullanma amaci null olabilecek bir seyin hic bir zaman null almayacagi anlamina gelir.
  }

  Araba(int modelYili, String markasi, bool vitesi, String yakiti) {
    print("-----Araba Bilgileri-----");
    print("Markasi $markasi modeli $modelYili vites $vitesi yakiti $yakiti");
    // this.class_da_belirtilen_degiskenler = constructor parametresindeki degiskenler
    this.model = modelYili;
    this.marka = markasi;
    this.vites = vitesi;
    this.yakit = yakiti;
  }
  /* Araba(this.modelYili, this.marka,this.vites,this.yakit) {
    // bu sekilde de kullanilabilir.
  } */
}
