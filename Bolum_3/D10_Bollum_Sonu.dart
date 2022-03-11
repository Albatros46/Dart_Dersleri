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
}
