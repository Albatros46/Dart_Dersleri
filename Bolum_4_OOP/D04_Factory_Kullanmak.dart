// factory kullanarak nesne üretmek

void main(List<String> args) {
  Ogrenci ogr1 = Ogrenci(220, "Servet");
  Ogrenci ogr2 = Ogrenci.idSiz("Ahmet");
  Ogrenci ogr3 = Ogrenci.factoryKurucusu(500, "Akif");
  print(ogr3.id);
  print(ogr3.isim);
}

class Ogrenci {
  int id = 0;
  String isim = "";

  Ogrenci(this.id, this.isim) {
    print("Varsayilan Kurucu calisti...");
  }
  Ogrenci.idSiz(this.isim) {
    print("Ogrenci ismi : $isim");
  }

  factory Ogrenci.factoryKurucusu(int id, String isim) {
    //diger constructor lardan farki return kullanabiliyoruz
    if (id <= 0 || isim.length == 0) {
      return Ogrenci(120, isim);
    } else
      return Ogrenci(id, isim);
  }
}
