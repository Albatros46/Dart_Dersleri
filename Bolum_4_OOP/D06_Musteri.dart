class Musteri {
  int? _musteriNo;

  Musteri(int musteriNo) {
    //this._musteriNo = musteriNo;
    _kontrol(musteriNo); //kontrol icin
  }

  //setter fonksiyon
  void _kontrol(int Numara) {
    if (Numara > 100 && Numara < 1000) {
      _musteriNo = Numara;
    } else {
      print("Musteri numarasi 100-1000 arasinda olmalidir...");
    }
  }

  //setter fonksiyon diger kullanim sekli
  void set musteriNuAta(int Numara) {
    if (Numara > 100 && Numara < 1000) {
      _musteriNo = Numara;
    } else {
      print("Musteri numarasi 100-1000 arasinda olmalidir...");
    }
  }

  void bilgileriYazdir() {
    print("Musteri olusturuldu numarasi=$_musteriNo");
  }

  //getter kullanimi
  String get bilgileriGoster {
    return "Musteri Numarasi : $_musteriNo";
  }

  // getter diger kullanim
  String get bilgileriSoyle => "Musteri Numaraniz :$_musteriNo";
}
