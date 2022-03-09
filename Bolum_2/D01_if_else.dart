void main(List<String> args) {
  int sayi1 = 50;
  num sayi2 = 12;
  print("**********************************************");
  if (sayi1 > sayi2) {
    print("$sayi1 sayisi $sayi2 sayisindan büyüktür.");
  } else if (sayi1 < sayi2) {
    print("$sayi1 sayisi $sayi2 sayisindan kücüktür.");
  } else {
    print("$sayi1 = $sayi2 sayilari birbirine esittir.");
  }
  print("**********************************************");
  double puan = 100;
  if (puan >= 90 && puan <= 100) {
    print("Notunuz $puan harf degeri: AA");
  } else if (puan >= 80 && puan <= 90) {
    print("Notunuz $puan harf degeri: BA");
  } else if (puan >= 70 && puan <= 80) {
    print("Notunuz $puan harf degeri: BA");
  } else if (puan >= 60 && puan <= 70) {
    print("Notunuz $puan harf degeri: CB");
  } else if (puan >= 50 && puan <= 60) {
    print("Notunuz $puan harf degeri: CC");
  } else if (puan >= 40 && puan <= 50) {
    print("Notunuz $puan harf degeri: DC");
  } else if (puan >= 35 && puan <= 40) {
    print("Notunuz $puan harf degeri: DD derslere iyi calisiniz..");
  } else {
    print("Notunuz $puan harf degeri: FF sinifta kaldiniz....");
  }
  print("-----------------------------------------------");
}
