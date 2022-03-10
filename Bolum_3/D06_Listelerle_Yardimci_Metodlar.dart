void main(List<String> args) {
  // sabit boyutlu dizilerde remov, removAt metodlari calismaz
  List<int> sayilar = [10, 8, 8, 8, 8, 8, 9, 63, 65, 46, 2022];
  print(sayilar.first); //listenin ilk elemani
  print(sayilar.last); // listenin son elemani
  print(sayilar.isEmpty); // liste bos ise true deger donecektir
  print("--------------------------");
  List<int> sayilar2 = [];
  if (sayilar2.isNotEmpty) {
    print(sayilar2.first); //listenin ilk elemani
    print(sayilar2.last);
  }
  print("Sayilar 2 bos mu:" + sayilar2.isEmpty.toString());
  print("Eleman Sayisi (sayilar):${sayilar.length}");
  print(
      "Sayilar $sayilar , ters siralanisi :${sayilar.reversed}"); // ters yazdirsada ana yapi bozulmayacaktir.
  print("--------------------------");
  sayilar2.add(1453); // sayilar2 listesine eleman ekleyecek
  print(sayilar2);
  print(sayilar);
  sayilar
      .remove(8); //ayni elemandan birden fazla var ise ilk karsilastigini siler
  print(sayilar); //1 tane 8 elemanini silinmis sekilde listeleyecek
  sayilar.removeAt(4); // 4.index deki elemani silecek
  print(
      sayilar); // 4. index deki eleman silinmis sekilde yeni hali ile listelenecek
  print("-----------------------");
  // sayilar.clear(); // listeyi temizler
  print("Butun Liste temizlendi... ");
  if (sayilar.contains(2022)) {
    print("Listede 2022 var...");
  } else {
    print("Listede 2022 YOK...");
  }
  print(sayilar);
  print(sayilar.elementAt(4)); //belirtilen index deki elemani goster
  print(sayilar.indexOf(2022)); // belirtilen elemanin indexini goster
  sayilar.shuffle(); // elemalari rastgele yer degistirir
  print(sayilar);
}
