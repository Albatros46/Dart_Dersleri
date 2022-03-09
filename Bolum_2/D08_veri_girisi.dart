import 'dart:io';

void main(List<String> args) {
  //VIze ve final notunu kullanicidan isteyen uygulama
  print("Adinizi Giriniz :");
  String? isim = stdin.readLineSync();
  print("Vize Notunuz :");
  int vize = int.parse(stdin.readLineSync()!);
  print("Final Notunuz :");
  int fin = int.parse(stdin.readLineSync()!);
  double ort = ((vize * 40) + (fin * 60)) / 100;
  print("$isim vize :$vize final :$fin ile ortalamaniz :$ort");

  //Fiyati girilen ürünün %18 kdv li fiyatini hesaplayalim
  print("Ürünün ham fiyati :");
  int fiyat = int.parse(stdin.readLineSync()!);
  double sonFiyat = ((fiyat * 18) / 100) + fiyat;
  print("Fiyati $fiyat olan ürünün %18 kdv li fiyati $sonFiyat");
}
