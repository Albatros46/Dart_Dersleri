void main(List<String> args) {
  Kisi k1 = Kisi("Akif Mirac", "Akcadag", 29);
  Kisi k2 = Calisan("Serkan", "Cakir", 38, 12000);
  k2.KendiniTanit();
}

class Kisi {
  String ad;
  String soyad;
  int yas;
  Kisi(this.ad, this.soyad, this.yas); // const olsuturduldu

  void KendiniTanit() {
    print("Benim adim $ad $soyad ve yasim $yas");
  }
}

class Calisan extends Kisi {
  int maas;
  Calisan(String name, String surname, int age, this.maas)
      : super(name, surname, age); // üst sinifin const. gonderdik.

  @override
  void KendiniTanit() {
    // Üst sinifta olmayan degiskeni burada kullanir hale getirmek icin  override ettik
    // aksi taktirde maas bilgisi ust siniftaki const. da belirtilmedigi icin yazdiramayacaktik.
    super.KendiniTanit();
    print("Maasim da $maas");
  }
}
