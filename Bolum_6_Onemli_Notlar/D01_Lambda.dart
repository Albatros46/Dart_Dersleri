import 'dart:io';

/**
 * lambda : ismi olmayan fonksiyonlardir. Dartta her fonksiyon aslinda nesnedir.
 * 
 */
void main(List<String> args) {
  Topla(12, 63); // normal fonksiyon cagirip kullanildi.
  //--------
  //lambda kullanimi
  var fonksiyon1 = (int x, int y) {
    int carpim = x * y;
    print("Sayilarin Carpimi :$carpim");
  };
  fonksiyon1(5, 6);

  // lamda ile diger kullanim
  Function fonksion2 = () {
    //String ad, String soyad, int yas
    print("Adiniz :");
    String? ad = stdin.readLineSync();
    print("Soyadiniz :");
    String? soyad = stdin.readLineSync();
    print("Yasiniz :");
    int? yas = int.parse(stdin.readLineSync()!);
    print("$ad $soyad $yas yasinda. Sayin $soyad hos geldiniz!");
  };
  fonksion2();
  //*************************************** */
  print("--------------------");
  var f1 = (int s) => s * 2; // her ikisinin de kullanim sekli ayni
  var f2 = (int s2) {
    return s2 * 2;
  };
  print("Sayinin 2 ile carpimi:${f1(5)}");
  print("Sayinin 2 ile carpimi:${f2(6)}");
}

//Normal fonksiyon
void Topla(int a, int b) {
  int toplam = a + b;
  print("Sayilarin Toplami :$toplam");
}
