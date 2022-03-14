//Kalitimda kurucu metodlarin kullanimi
//Use of constructor methods in inheritance
void main(List<String> args) {
  //Asker asker1 = Asker();
  Er er1 = Er("Ahmet", "KARACA", "ANKARA");
  Er er2 = Er("Ahmet", "KARACA",
      "ANKARA"); //üst sinif const. (this.ad, this.soyad, this.memleket seklinde yazildigi icin.

  er1.ad = "Servet";
  er1.soyad = "Akcadag";
  er1.memleket = "Kahramanmaras";
  er1.selamla();
  print(er1);
  er2.selamla();

  /*alt sinif calissa bile extend ettigi ana sinifin icindeki varsayilan constructor calisacaktir. */
}

class Asker {
  String ad = "";
  String soyad = "";
  String memleket = "Kahramanmaras";

  Asker(this.ad, this.soyad, this.memleket) {
    // Asker(this.ad,this.soyad,this.memleket) // seklinde const. yazarsak obje olusturuldugunda kesinlike bu veriler isetnecektir.
    print("Varsayilan constructor calisti");
  }
  void selamla() {
    print("Benim adim $ad $soyad memleketim $memleket arz ederim!");
  }
}

class Er extends Asker {
  Er(String adi, String soyadi, String memleketi)
      : super(adi, soyadi, memleketi) {
    super.memleket = "Adana"; // super anahtar kelimesi ile ust sinifin varsayilan degiskenlerine erisebiliriz.
    // eger üst sinifin constructor'u   Asker(this.ad,this.soyad,this.memleket) yazilmis ise,
    //super anahtar kelimesi kullanarak parametrelerin üst sinifa gonderilmesi saglancaktir.
    print("Er Varsayilan constructor calisti");
  }
}
