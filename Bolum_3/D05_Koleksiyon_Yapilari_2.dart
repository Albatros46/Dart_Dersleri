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
  // plakalar[0] = 45; // seklinde kullanim hata verecektir.
  plakalar.add(1);
  plakalar.add(12);
  plakalar.add(78);
  plakalar.add(96);
  print("Dynamic Liste : $plakalar");
}
