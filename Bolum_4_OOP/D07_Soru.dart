/*
1- CemberDaire isimli bir class olusturun. Sinif icinde yaricap isteyen bir
 constructor olsun. Ayrica cevre ve alan hesaplayan metodlari olmali. Pi=3.14 alin

2- Ogrenci isminde class olusturun. Bu class bu class da ogrencinin id ve not degerlerini
tutmali. 100 elemanli bir listede id ve not degerlerini rastgele olusturarak 
bu listeyi yazdirin.
*/

import 'dart:math';

void main(List<String> args) {
  var daire1 = CemberDaire(8);
  print("Dairenin alani: ${daire1.alanHesapla()}");
  print("Dairenin cevresi: ${daire1.cevreHesapla()}");
  //---------------------
  print("*******************");
  Ogrenci ogr1 = Ogrenci(id: 120, notDegeri: 98);
  List<Ogrenci> ogrenciListesi = List.filled(100,
      Ogrenci()); //ogrenci adinda liste olusturduk ve listenin uzunlugu belirledik fakat ici Ogrenci objesinden doldurulacak
  listeDoldur(ogrenciListesi);
  print(ogrenciListesi[5].id);
  print(ogrenciListesi[5].notDegeri);
  for (var item in ogrenciListesi) {
    print("Ogrenci Id:${item.id}");
    print("Ogrencinin Notu:${item.notDegeri}");
  }
}

class CemberDaire {
  int yariCap = 1;
  double _Pi = 3.14; //disaridan erisime kapali (private)

  CemberDaire(int yari) {
    _yaricapKontrol = yari; //setter metodlar da  = ile set edilir.
  }

  void set _yaricapKontrol(int deger) {
    if (deger > 0) {
      yariCap = deger;
    } else {
      print("Yaricap varsayilan olarak 1 atandi.");
      yariCap = 1;
    }
  }

  double cevreHesapla() {
    return 2 * _Pi * yariCap;
  }

  double alanHesapla() {
    return _Pi * yariCap * yariCap;
  }

  void bilgileriYazdir() {
    print("Dairenin Alani =$alanHesapla()");
    print("Dairenin Cevresi =$cevreHesapla()");
  }
}

class Ogrenci {
  int id;
  int notDegeri;

  Ogrenci({this.id = 1, this.notDegeri = 1}); //varsayilan olarak 1 atadik
}

void listeDoldur(List<Ogrenci> liste) {
  // ogrenci listesini dolduracak fonksiyon
  for (int i = 0; i < liste.length; i++) {
    liste[i] =
        Ogrenci(id: Random().nextInt(1000), notDegeri: Random().nextInt(100));
  }
}
