/**
 * Map yapisi Set gibi sirarsiz sekilde elemanlari saklayan bir koleksiyon ogesidir.
 * Map, list ve Set lerden ayiran ozellik ise elemanlara key-value olarak saklamaktadir.
 * herhangi bir veri türü kullanilabilir ama burada onemli olan key degerlerinin unique(benzersiz) olamak zorunda.
 * Map, pythonda da dictionary(sozluk) gibi düsünebiliriz. 
 * Map lar dinamik uzunluga sahiptirler.
 * veritabani, json ile veri cekme gibi islemlerde kullanacagiz.
 * Map<key,value> degisken_ismi={1:"Pforzheim",2:"Stuttgart"}; // key value veri tipini girecegiz.
 */
void main(List<String> args) {
  Map<int, String> sehirler = {
    1: "Adana",
    6: "Ankara",
    34: "Istanbul",
    35: "Izmir",
    46: "Kahramanmaras",
    7: "Antalya"
  };
  print(sehirler);
  print(sehirler[34]); // belirtilen key deki elemani goruntuleme islemi
  print("+++++++++++++++++++++++++");
  Map<String, dynamic> servet = {
    "soyad": "AKCADAG",
    "yas ": 34,
    "kilo": 76.8,
    "boy": 175.0,
    "bekar": true,
  }; //eger karisik deger girilecekse valuee dyamic veya object tip belirtilir.
  print(servet);
  Map<String, dynamic> deneme = Map(); // bos map olusturma
  deneme["Memleket"] =
      "Kahramanmaras"; // memleket diye key olsuturuldu ve deger atandi.
  Map<String, Object> deneme2 = {}; // bos map olusturma
  print("*****************");
  for (int oAnkiDeger in sehirler.keys) {
    print("Key ler :" + oAnkiDeger.toString());
    print("Value degerler:${sehirler[oAnkiDeger]}");
  }
  print("--------------------");
  for (dynamic deger in sehirler.values) {
    print("Value :$deger");
  }
  print("*********************");
  for (var element in sehirler.entries) {
    // key ve value degerleri seklinde listeleme islemi
    print("Key :${element.key} - Value:${element.value}");
  }
  print("**********************");
  // sorgu yapmak icin ise:
  if (sehirler.containsKey(46)) {
    print("Sehir degeri :${sehirler[46]}");
  }
}
