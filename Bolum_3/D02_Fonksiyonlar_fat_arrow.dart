import 'dart:io';

void main(List<String> args) {
  toplama();
  cikarma();
  print("Carpim :" + carpma(12, 2).toString());
  print("Maximum olan sayi :" + maxBul(90, 20).toString());
  print("Maximum olan sayi :" + minBUl(90, 20).toString());
}

cikarma() {
  print("-----Hesap Makinesi----");
  print("1.Sayiyi Giriniz:");
  int x = int.parse(stdin.readLineSync()!);
  print("2.Sayiyi Giriniz:");
  int y = int.parse(stdin.readLineSync()!);
  int sonuc = x - y;
  return print("Sayilarin farki : $sonuc");
}

void toplama() {
  print("-----Hesap Makinesi----");
  print("1.Sayiyi Giriniz:");
  int x = int.parse(stdin.readLineSync()!);
  print("2.Sayiyi Giriniz:");
  int y = int.parse(stdin.readLineSync()!);

  print("Sayilarin Toplami: ${x + y}");
}

int carpma(int s1, int s2) => s1 * s2; //fat arrow (kisa gosterim sekli)
int maxBul(int a, int b) => (a < b) ? b : a; //kisa if kullanimi
int minBUl(int x, int y) => (x < y) ? x : y; //kisa if kullanimi
