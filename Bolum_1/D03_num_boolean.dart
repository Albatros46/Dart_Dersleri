void main(List<String> args) {
  int yas = 34;
  print(yas);
  num yil = 2021;
  print(yil);
  double ort = 23;
  print(ort);
  int kilo = 75.6.toInt(); //tip donusturme
  print(kilo);
  double? sayi2 = null; //bir degiskene null degisken atamak icin ? kullanilir
  print(sayi2);
  int hexadecimalSayi = 0xAABBCC;
  print("Hexadecimal sayi : $hexadecimalSayi");
}
/*
Null Safty : sayisal bir degisken atandiginda baslangic degeri 
olmaz ise program hata verir bu yüzden sayisal deger atamalarinda
baslangic degeri verilmelidir.
int sayi=0;
double boy=0;
 */