/**Abstruct class: siniflar arasinda soyutlama yapmak icni kullanilir. Abstract siniflardan obje üretilmez, normal ve abstract metodlardan olusur. 
 * abstract metodlar alt siniflarca override edilemk zorundadirlar.
 * 
 * Bir sinifta abstract metod varsa o sinif mutlaka abstrat tanimlanmak zorundadir.
 * 
 */
void main(List<String> args) {
  Kare k1 = Kare(10);
  print(k1.alanHesapla());
  print(k1.cevreHesapla());
  Sekil s1 = Dikdortgen(8, 12);
  print(s1.alanHesapla());
  print(s1.cevreHesapla());

}

abstract class Sekil {
  // sekil n oldugu tam olarak belli degil bu yüzden soyut olmali genel bir ifade oldugu icin
  // sadece en az bir tane govdesi bos metod olmasi yeterlidir.
  double alanHesapla();

  double cevreHesapla();
  void merhaba() {
    print("Abstract Sinif calisti.");
  }
}

class Kare extends Sekil {
  // artik kara sinifi bu metodlari yazmak zorundadir.
  int kenar;
  Kare(this.kenar);
  @override
  double alanHesapla() {
    int sonuc = kenar * kenar;
    return sonuc.toDouble();
  }

  @override
  double cevreHesapla() {
    return kenar * 2;
  }

  void yazdir() {
    print("Kare seklinin alani = $alanHesapla()");
    print("Kare seklinin cevresi = $cevreHesapla()");
  }
}

class Dikdortgen extends Sekil {
  int en;
  int boy;
  Dikdortgen(this.en, this.boy);

  @override
  double alanHesapla() {
    return en * boy.toDouble();
  }

  @override
  double cevreHesapla() {
    return 2 * (en + boy).toDouble();
  }
}
