/**Immutable: degismez sinif, güvenlik ve hiz acisindan önemlidir. Flutter de haber vs uygulamarlda kullancagiz.
 * 
 */
void main(List<String> args) {
  Ogrenci ogr1 = Ogrenci(1, "Servet", "AKCADAG"); // degistirilebilir deger

  const Auto auto1 = Auto(45, "Audi");
  const Auto auto2 = Auto(45, "Audi"); // final tanimlandigi icin degismez
  if (auto1 == auto2) {
    print(
        "ESIT"); // constructor cosnt tanimlandigi icin ayni referans noktasini gosterecek ve esit olacak
  } else {
    print("Esit DEGIL"); // final tanmli oldugu icin esit degil olacak
  }
}

/**ne kadar obje ureturseniz uretin hepsi tek bir yeri referans gosterecektir.
 * doger sekilde her obje olusmasinda, bellekte farkli referans adresleri gosterilir.
 */
class Ogrenci {
  int id;
  String VorName; // ad (name)
  String NachName; // soyad

  Ogrenci(this.id, this.VorName, this.NachName);
}

class Auto {
  final int plaka;
  final String Markenname;
  // constructor a const eklenmesi halinde bellekte bir tane referans olsur ve sadece orasi kullanilir
  const Auto(this.plaka, this.Markenname);
}
