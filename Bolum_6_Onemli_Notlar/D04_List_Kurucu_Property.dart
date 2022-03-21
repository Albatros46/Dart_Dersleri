/**List lerin property özellikleri 
 * https://api.dart.dev/stable/2.16.1/dart-core/List-class.html
*/
void main(List<String> args) {
  Person p1 = Person(1, "Servet");
  Ogrenci ogr1 = Ogrenci(2, "Akif", 5);
  Person ogr2 = Ogrenci(3, "Serkan", 7);
  var p2 = Person(4, "Hasan");
  var ogr3 = Ogrenci(5, "Seyma", 4);
  //bu elemanlari listede tutmak icin üst sinifta tek cati altinda tutabilirim
  List<Person> tumKisiler = [
    p1,
    p2,
    ogr1,
    ogr2,
    ogr3
  ]; //ogrenci listesinde tutatarsam us siniftan türetilenler hata verecektir.

  var liste1 = List<Ogrenci>.filled(5, Ogrenci(0, "", 0));
  var listeFrom = List<Person>.from(tumKisiler); //yada
  var listeFrom2 = List<Person>.from(tumKisiler.whereType<Ogrenci>()); //yada

  var listeOf = List<Ogrenci>.of(tumKisiler.whereType<Ogrenci>());
  print(listeOf);
}

class Person {
  int id = 0;
  String isim = "";
  Person(this.id, this.isim);
  @override
  String toString() {
    return "id:$id ve isim :$isim";
  }
}

class Ogrenci extends Person {
  int alinanDersler = 0;
  Ogrenci(int id, String isim, this.alinanDersler) : super(id, isim);

  @override
  String toString() {
    return "id:$id ve isim :$isim ve alinan dersler $alinanDersler";
  }
}
