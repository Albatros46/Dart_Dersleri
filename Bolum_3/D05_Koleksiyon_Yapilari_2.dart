/**
 * Dinamik olarak büyüyen kücülen koleksyionlarimiz varsa sabit liste yerine dinamik listeler kullaniriz.
 * Bu listelere varsayilan olarak boyut verilmez. Tanimlanmasi sabit listelere benzemektedir.
 * add -> eleman ekler
 * clear -> bütün elemanlari siler
 * remove -> belirtilen elemani siler
 * removaAt -> belirtilen indexdeki elemani siler
 * Ayrica [] killanarak belli bir indexteki elemani güncelleriz.
 */
void main(List<String> args) {
  List<int> plakalar = [];
  // List<int?> plakalar = []; // seklinde kullanim ile listenin uzunlugu artirilabilir fakat listede kullanilmayan kisilara null deger atanir.
  // plakalar[0] = 45; // seklinde kullanim hata verecektir.
  plakalar.add(1);
  plakalar.add(12);
  plakalar.add(78);
  plakalar.add(96);
  print("Dynamic Liste : $plakalar");
  print(plakalar.length);
  print("******************");
  List<int> sayilar = [1, 23, 12, 45, 56];
  sayilar.add(10000); // listeye eleman ekledik
  sayilar.remove(1); //belirtilen eleman silinecek
  print("Sayilar =$sayilar");
  sayilar.removeAt(0); // 0. indexteki elemani silecek
  print(sayilar);
  //*********************
  List<int> test1 =
      List.empty(growable: true); //growable true ise dinamik oalcaktir.
  List<int> test2 =
      []; //test1 ve test2 listeleri kullanimlari aynidir. her ikiside dinamik listedir.
}
