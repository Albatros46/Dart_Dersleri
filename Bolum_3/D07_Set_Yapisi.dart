/**
 * Listeden ayiran en onemli farki elemanlari sirali olarak tutmaz, bu durumda list lerde  oldugu gibi indexleri kullanmayiz.
 * Diger farki ise bir eleman sadece bir tane olur, her eleman birbirinden farklidir.
 * Index olmadan elemanlar kontrol etmek icin contains metodu kullanilir. 
 * Bunun disinda list lerde kullanilan metodlar set icinde gecerlidir.
 * (cekilis uygulamasi yaparken kullanilabilir.)
 */
void main(List<String> args) {
  // Set lerde veri saklanirken sira ile saklanmaz.Bu yüzden index degeri ile yazdirma yapilamaz.
  Set<String> isimler = Set();
  isimler.add("Servet");
  isimler.add("Ahmet");
  isimler.add("Akif");
  isimler.add("Oguz");
  isimler.add("Servet");
  isimler.add("Bekir");
  isimler.add("Servet");
  for (String s1 in isimler) {
    // Servet ismi 3 defa gecsede bir kere listelenecek
    print("Isim :$s1");
  }
  if (isimler.contains("Akif")) {
    print("Isim : AKIF ismi mevcut");
  } else {
    print("Belirtilen ISIM mevcut degil!");
  }
  print("*************************");
  bool sonuc = isimler.remove("Oguz");
  print("Sonuc :" + sonuc.toString()); // silindiyse true deger donecek
  for (String s1 in isimler) {
    // Artik Oguz ismi listelenmeyecek
    print("Isim :$s1");
  }
  print("-------------------------");
  Set<int> numaralar = Set.from([
    1,
    45,
    63,
    1,
    1,
    85,
    96,
    1,
  ]);
  for (int nu in numaralar) {
    print("Numaralar :$nu");
  }
  List<int> ciftSayilar = [2, 4, 78, 96, 14, 18];
  numaralar.addAll(ciftSayilar); // lisetyi set e ekleme islemi
  for (var item in numaralar) {
    print("Set e liste eklenmis hali:$item");
  }
}
