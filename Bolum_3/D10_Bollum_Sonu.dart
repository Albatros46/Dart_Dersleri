import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  // 1. Sehirleri tutan bir liste olusturun, 4 tane sehir ekleyip sirayla ekrana yadirin.
  List<String> sehirler = List.filled(4, ""); // sabit uzunluklu liste
  sehirler[0] = "Istanbul";
  sehirler[1] = "Ankara";
  sehirler[2] = "Kahramanmaras";
  sehirler[3] = "Izmir";
  for (var item in sehirler) {
    print("Sehirler :$item");
  } // veya
  print("************");
  for (var i = 0; i < sehirler.length; i++) {
    print("Sehirler :${sehirler[i]}");
  }
  print("-----------------------------------");
  // 2. Key leri String, degerleri dynamic olan map olusturun ve pc nizin donanimini listeletiniz.
  Map<String, dynamic> donanim = {
    "Cekirdek Sayisi": 16,
    "Ram ": 16,
    "SSD :": true,
    "HDD :": "1 TB"
  };
  print("donanim bilgisi");
  for (var yaz in donanim.entries) {
    print(" ${yaz.key} : ${yaz.value}");
  }
  print("-----------------------------------");
  // 3.Her bir elemanda key leri String, value leri dynamic olan bir liste olusturun.
  List<Map<String, dynamic>> iller = <Map<String, dynamic>>[
    {"Il_Adi:": "Kahramanmaras", "Plaka:": 46, "Ilce:": 12}
  ];
  Map<String, dynamic> eklenecekSehir1 = Map<String, dynamic>();
  eklenecekSehir1["il_adi"] = "Ankara";
  eklenecekSehir1["Plaka"] = 6;
  eklenecekSehir1["ilce"] = 18;
  Map<String, dynamic> eklenecekSehir2 = <String, dynamic>{};
  eklenecekSehir2["il_adi"] = "Denizli";
  eklenecekSehir2["Plaka"] = 59;
  eklenecekSehir2["ilce"] = 9;
  var eklenecekSehir3 = <String, dynamic>{};
  eklenecekSehir3["il_adi"] = "Istanbul";
  eklenecekSehir3["Plaka"] = 34;
  eklenecekSehir3["ilce"] = 26;
  //farkli yontenler kullnimi
  iller.add(eklenecekSehir1);
  iller.add(eklenecekSehir2);
  iller.add(eklenecekSehir3);
  for (var item in iller) {
    print(item);
  }
  print("********");
  print(
      iller); // liste olarak goruntuleyecek. iller[0] index de belirtilebilir.
  print("+++++++++++++++++++++++++++++++++++++++++");
  // 4. 5 elemanli 2 farkli liste olusturun. Elemanlari 0-50 arasinda rastgele sekilde olustursun.
  // Olusturulan elemanlar bir listeye aktarilacak ve son olarak da elemanlarin karesini tutan
  //bir set yapisi olusturup ekrana yazdirilacak.
  List<int> liste1 = List.filled(5, 0);
  var liste2 = List.filled(5, 0);
  List<int> sonListe = <int>[];
  for (var i = 0; i < 5; i++) {
    liste1[i] = Random().nextInt(50);
    liste2[i] = Random().nextInt(50);
  }
  print("Liste 1:$liste1");
  print("Liste 2:$liste2");
  sonListe = [...liste1, ...liste2];
  Set<int> SonSet = <int>{};
  for (var item in sonListe) {
    SonSet.add(item * item);
  } // tekrar eden elemanlar Set lerde yazdirilmaz.
  print("Son Listenin Karesi:$SonSet");
  // 5. Kullanicidan Ders Notlari istenecek bu sayilar bir listede tutulacak
  //kullanici -1 e bastiginda notlarin ortalamasi ekrana yazdirilaca.
  int notDegeri = 0;
  List<int> girilenNotlar = <int>[];
  do {
    print("Lütfen notunuzu giriniz, cikis icin -1 :");
    int.parse(
        stdin.readLineSync()!); //null deger gelmeyecegi icin ! kullaniyoruz
    if (notDegeri != -1) {
      girilenNotlar.add(notDegeri);
    }
  } while (notDegeri == -1);
  {
    print("Kac tane not girildi ${girilenNotlar.length}");
    double ort = ListeninOrtalamasi(girilenNotlar);
    print("Notlarin Ortalamasi:$ort");
  }
}

double ListeninOrtalamasi(List<int> liste) {
  int toplam = 0;
  for (var i = 0; i < liste.length; i++) {
    toplam = toplam + liste[i];
  }
  return toplam / liste.length;
}
