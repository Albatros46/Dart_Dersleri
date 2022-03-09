import 'dart:io';

/**
 * Fonksiyon kavrami sayesinde problemlerimizi kücük alt problemlere parcalayarak cok daha okunakli,
 * hata bulmasi kolay uygulamalar gelistirebiliriz.
 * Bir uyugulama gelistirirken, bir problemi cözerken o problemde belli bir isi yapan kodlari
 * metodlara bölmemiz gerekir. Bunun icin metod veya fonksiyon olusturabiliriz.
 * Metodlar parametreli veya parametresiz olabilir. Metodlar geriye bir deger dondurebilir.
 * Deger dondurmeyen metod tanimlanirken basina void yazilir.
 * Dart dilinde return ve metod geri dondurme veri tipi degeri opsiyonerdir. yani belirmek zorunda
 * degiliz.(Belirtilmesi önerilir.)
 */
void main(List<String> args) {
  cevreyiHesapla();
  alanHesapla(5, 10); //geriye deger dondurmuyor
  int sonuc = alanHesapla2(12, 6);
  print("Sonuc :$sonuc");
  hacimHesapla();
}

void cevreyiHesapla() {
  //Parametresiz metod. parametresiz oldugu icin void yazilir.
  print("En ölcüsünü giriniz :");
  int en = int.parse(stdin.readLineSync()!);
  print("Boy ölcüsünü giriniz :");
  int boy = int.parse(stdin.readLineSync()!);
  int cevre = 2 * (en + boy);
  print("Boyu $boy ve eni $en olan karenin cevresi :$cevre");
}

alanHesapla(int a, int b) {
  //Parametreli metod
  //geriye deger dondurmuyor
  int alan = a * b;
  print("Alan : $alan");
}

alanHesapla2(int sayi1, int sayi2) {
  //Parametreli metod
  //geriye deger dondurur
  return sayi1 * sayi2;
}

hacimHesapla() {
  print("____Hacim Hesaplama Uyuglamasi____");
  print("Hacmini hesaplamak istediginiz nesneyi secin:");
  List nesne = [
    "1-Küp",
    "2-Dikdörtgen",
    "3-Silindir",
    "4-Küre",
    "4-Düzgün Kare Piramit",
    "5-Koni",
    "q-Cikis"
  ];
  String secim = "";
  double? sonuc;
  for (int a = 0; a < nesne.length; a++) {
    print("${nesne[a]}");
    if (secim == "1") {
      print("Küpün Kenar Uzunlugu(m) :");
      double x = double.parse(stdin.readLineSync()!);
      sonuc = x * x * x;
      print("Kenar uzunlu $x olan küpün hacmi :${sonuc}");
    } else if (secim == "2") {
      print("Dikdörtgenin Kenar Uzunlugu(m) :");
      double a = double.parse(stdin.readLineSync()!);
      print("Dikdörtgenin Genisligi Uzunlugu(m) :");
      double b = double.parse(stdin.readLineSync()!);
      print("Dikdörtgenin Yüksekligi Uzunlugu(m) :");
      double c = double.parse(stdin.readLineSync()!);
      sonuc = a * b * c;
      print("Dikdörtgenin $a * $b * $c seklinde hacmi ise :${sonuc}");
    }
  }

  return sonuc;
}
