/**Higher order fuction : bir fonksiyonu parametre oalrak  alan veya
 *  geriye fonksiyon donduren fonksiyonlardir.
 * Her ikisini ayni anda da yapabilir.
 */
void main(List<String> args) {
  List<int> liste = [12, 56, 54, 41];
  //aslinda forEach bir fonksiyon
  // asagidaki kisim ise lambda kullanimi ile fonksiyon
  liste.forEach((element) {
    print("Element : $element");
  });
  liste.forEach(
      geriDon); // forEach kendisi bir fonksiyon, ben kendi yazdigim fonksiyonu parametre olarak gonderdim
  print("------------------------");
  forIc(liste, (int deger, int indexDeger) {
    print("Okunan :$deger ve index degeri : $indexDeger");
  });
}

void geriDon(int item) {
  print("Item :$item");
}

void forIc(List<int> liste, Function callback) {
  // parametre olarak fonksiyon da gonderdik
  for (var i = 0; i < liste.length; i++) {
    print("Deger :${liste[i]}");
    //veya
    callback(liste[i], i);
  }
}
