/*
Liste ikiye ayrilir
  1- Sabit uzunluklu
  2- Büyüyen listeler

Diger dillerde dizi olarak bilinen yapilar dart dilinde sabit uzunluklu liste olarak kullanilir.
Liste<int> numaralar=List.filled(10,0); // 10 eleman iceren sabit uzunluklu liste yani dizi
index numaralari 0'dan baslar yani listenin ilk elemanina erismek icin 0. indexine bakilir.
numaralar[0] diyerek.

*/

void main(List<String> args) {
  int sayi = 4;
  List<int> sayilar = List.filled(5, 2, growable: false);
  sayilar[0] = 6; //0.index
  sayilar[1] = 65; //1.index
  sayilar[2] = 95;
  sayilar[3] = 756;
  sayilar[4] = 964;
  print("Integer Liste=$sayilar");
  print(sayilar.length); // sabit uzunluklu oldugu icin degistirilemez
  print(sayilar[3]); // 3. index deki numalari goruntuler.
  print("*********************");
  List<String> sehirler = List.filled(3, "");
  sehirler[0] = "Kahramanmaras";
  sehirler[1] = "Ankara";
  sehirler[2] = "Pforzheim";
  print("String Liste=$sehirler");
  print("*********************");
  List karisik = List.filled(5, 0); //liste ici karisik olacaktir
  karisik[0] = 46;
  karisik[1] = "Pforzheim";
  karisik[2] = false;
  print("Karisik Liste1=$karisik");
  List<dynamic> karisik2 = List.filled(
      3, 0); // dynamic olarak tanimlarsak da karisik liste yapanliriz
  karisik2[0] = true;
  karisik2[1] = 49;
  karisik2[2] = "false";
  print("Karisik Liste2 =$karisik2");

// Liste elemanlarini gezerek yazdirma islemi
  for (int i = 0; i < sayilar.length; i++) {
    sayilar[i] += 3; // o anki elemana 3 ekleyecek
    print(sayilar[i]); // 3 eklemmis olarak yazdiracak
  }
  print("--------------------");
  for (String eleman in sehirler) {
    print(eleman);
  }
}
