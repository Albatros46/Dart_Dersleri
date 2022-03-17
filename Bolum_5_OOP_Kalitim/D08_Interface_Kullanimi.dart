/**Dart dilinde interface diye bir kavram yoktur, ama siniflari implements anahtar kelimesi
 * ile intercaces gibi kullanilabilir.
 * Interfaceler sayesinde ortak ozelligi olan ancak kalitimsal olarak alakali olmayan 
 * siniflari bir cati altinda toplayabiliriz.
 * 
 * Interface olarak kullanilan siniflarin metodlari bu siniflari implemente eden siniflar 
 * tarafinda yapilmak zorundadir.
 * Inteerface sayesinde dart dilinde olmayan coklu kalitim saglanabilir. 
 * Bir sinif birden fazla sinifi implementes diyerek gerceklestrirebilir.
 */
void main(List<String> args) {
  Kopek k1 = Kopek();
  k1.swimming();
  k1.run();
}

abstract class Ucabilenler {
  void fly();
}

abstract class Yuzebilenler {
  void swimming();
}

abstract class Kosabilen {
  void run();
}

class Kopek implements Kosabilen, Yuzebilenler {
  @override
  void swimming() {
    // TODO: implement swimming
    print("Kopek Yüzüyor");
  }

  @override
  void run() {
    // TODO: implement run
    print("Kopek kosuyor");
  }
}
