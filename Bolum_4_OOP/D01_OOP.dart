/** Nesne Yonelimli Programlama (object oriented programming)
 * Sinif :  kendi veri türlerimiz veya soyut olan taslaklara denir. kendi icinde degiskenlere ve metodlara sahiptir.
 * Nesne : Olusturulan soyut ve taslak olan siniflardan üretilen orneklere denir.
 * Nesnelere sinifin sahip oldugu degerlere ulasmak icin kullandigimiz referanslardir.
 *  Her nesne olusturuldugunda kurucu metod(constructor) calisir. Parametreli veya parametresiz olarak ikiye ayrilir
 */
void main(List<String> args) {
  Ogrenci ogr1 = Ogrenci();
  ogr1.ogrNu = 220;
  ogr1.ad = "Servet";
  ogr1.soyadi = "AKCADAG";
  ogr1.cinsiyet = true;
  var ogr2 = Ogrenci(); // seklinde de tanimlanabilir.
  ogr1.dersCalis();
  print("------------");
  Araba araba1 = Araba(2005, "Toyota", false);
  araba1.marka = "Toyota";
  araba1.modelYili = 2021;
  araba1.mauel = true;
  araba1.bilgileriGoster();
  print("---------------");
  Araba araba2 = Araba(2022, "Mercedes", true);
  araba2.bilgileriGoster(); // varsayilan degerleri gosterecek
  var fordFocus = Araba(2022, "Ford", true);
  print(fordFocus);
}

class Ogrenci {
  //instance variable
  int? ogrNu; // ? yerien ogrNu=1 diyerek varsayilan deger de atanabilir.
  String? soyadi;
  String? ad;
  bool? cinsiyet;

  void dersCalis() {
    print("Ders calismalisin...");
  }
}

class Araba {
  int modelYili = 2020;
  String marka = "";
  bool mauel = true;

  void bilgileriGoster() {
    print("Arabanin Modeli $modelYili, markasi $marka vites manuel mi $mauel");
  }

  // Araba() {
  //   //Kurucu metod (contructor), yazmasakda varsayilan olarak bulunur. aynianda iki contructor kullanilmak hata verir.
  //   print("Araba bilgileri");
  // }
  Araba(int modeli, String marka, bool manuel) {
    print("Araba bilgileri");
  }
}
