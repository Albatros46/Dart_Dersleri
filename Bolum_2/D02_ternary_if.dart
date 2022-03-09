void main(List<String> args) {
  int sayi1 = 50;
  num sayi2 = 12;
  int? kucukSayi;
  //normalde if blogu
  if (sayi1 < sayi2) {
    kucukSayi = sayi1;
    print("Kucuk  sayi= $kucukSayi");
  } else {
    kucukSayi = sayi2.toInt();
    print("Kucuk  sayi= $kucukSayi");
  }
  //ternary if kullanimi
  sayi1 < sayi2 ? kucukSayi = sayi1 : kucukSayi = sayi2.toInt();
  print("Kucuk  sayi= $kucukSayi");
}
