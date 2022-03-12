/* Private degisken ve fonksiyonlar: bir siniftaki degisken ve metodlari bazen erisime kapatmak isteyebiliriz. 
Bu durumda _ isareti ile bunlari saklayabliriz.
  Getter : Sinif degiskenlerini okumak icin kullanilan özel fonksiyonlardir. Bu metodlarin amaci özellikle private yani 
tanimlandigi class disinda erisime kapali degiskenlerin okunmasini saglamaktadir.

  Setter : Sinif degiskenlerine veri atamak icin kullanilir. Bu metodlarin amaci özellikle 
  private degiskenlere veri atamak icin kullanilir-
 */
void main(List<String> args) {
  var db = VeriTabaniIsl.login("Servet", "root");
  print(db
      ._username); // Class icinde erisebiliriz _username ve _password degiskenlerine. class disi erisime kapalidir.
  db._password = "12345";
  print(db._password);
  bool sonuc = db.baglan();
  if (sonuc) {
    print("Baglandi...");
  } else {
    print("Baglanamadi!");
  }
}

class VeriTabaniIsl {
  String _username = "root";
  String _password = "root";

  bool baglan() {
    if (_username == "root" && _password == "root") {
      return true;
    } else
      return false;
  }

  VeriTabaniIsl.login(String username, String password) {
    print("$username kullanicisi baglandi");
  }
}
