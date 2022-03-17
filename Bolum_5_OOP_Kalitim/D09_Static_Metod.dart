import '../Bolum_3/D02_Fonksiyonlar_fat_arrow.dart';

/**Siniflarimizda nesne üretmeden bazi degiskenlere ve metodlara erismek isteyebiliriz,
 *  static anahtar kelimesi ile erisime acacagiz.
 * Static kullanara nesne degil sinif degiskenleri ve metodlari olusturabiliriz.
 *  Bu sinifta tanimlanan metod ve degiskenlere erisirken mutlaka nesne üretmeniz gerekir.
 * ama biz bunlari static olarak tanimlarsak artik nesne üretmeden erisebilir ve kullanabiliriz. ARtik o nesnelerin degil
 * sinif ve metodlarin degiskenidir.
 */
void main(List<String> args) {
  Matematik m1 = Matematik(12, 23);
  m1.Topla();
  m1.Cikar();
  print("------------");
  print(Matematik.PiDeger); //static degiskene erisebilirim
  Matematik.Bolumunuz(); // static metodlara da class adi ile erisilebilir
}

class Matematik {
  //instance variable
  int birinciSayi = 0;
  int ikinciSayi = 0;

  //class variable, sinif degiskeni (artik sinif ismi ile degiskene erisilebilir)
  static double PiDeger = 3.14;

  static void Bolumunuz() {
    // Static metod icinde dger metodlari kullanamazsiniz
    // Topla(); hata verecektir
    print("Benim bolumum Bilgisayar Yazilim");
  }

  Matematik(this.birinciSayi, this.ikinciSayi);
  void Topla() {
    //fakat instance metod icerinde static metod cagirip kullanabilirsiniz
    Bolumunuz(); // hata vermeden kullanirsiniz
    print("Toplam =${birinciSayi + ikinciSayi}");
  }

  void Cikar() {
    print("Farki =${birinciSayi + ikinciSayi}");
  }
}
