/**Kalitim (inheritance) : Ana sinif olarak olusturdugumuz class in bir takim özelliklerinin 
 * child siniflara aktarilmasi kalitim(inheritance) dir. 
 * Polymorfizm(cok bicimlik)
 * 
 * Metod overriding: üst siniftaki degisken veya metodlarin alt siniflar tarafindan 
 * degistirilmesine denir. 
 */
void main(List<String> args) {
  NormalUser user1 = NormalUser();
  user1.email = "test@gmail.com";
  user1.password = "12345";
  user1.girisYap();
  okucuyuNormal user2 = okucuyuNormal();
  user2.email = "misafir@gmail.com";
  user2.email = "465646";
  user2.girisYap(); //override edilmis metod calisacak
//---------------
  User user3 = AdminUSer(); // upcasting - üst sinifa cevirme
  user3.email = "admin@gmail.com";
  user3.password = "9541376";

//---------------
  List<User> tumUserler =
      []; // bu kullanim upCasting farkli class larin üst class a cevrilmesi islemi
  tumUserler.add(user1); // normal user
  tumUserler.add(user2); // okuyucuUser
  tumUserler.add(user3); // admin user
  print("Test Calisiyor............");
  test(user3);
  test(user2);
  test(user1);
}

void test(User kullanici) {
  // normalde girilen kullanici belli degil fakat main class da parametre olarak gelen kullanici ile giris yapan kullanici belli olacak

  kullanici.girisYap(); //Polimorfizm (cok bicimlilik)
}

class User {
  //Parent class (ana sinif)
  String email = "";
  String password = "";

  void girisYap() {
    print("Kullanici Giris yapti.");
  }
}

class NormalUser extends User {
  //child class

  void girisYap() {
    print("Kullanici Giris yapti.");
  }
}

class AdminUSer extends User {
  //child class
  void girisYap() {
    print("Admin Giris yapti.");
  }

  void KullaniciIslemleri() {
    print("Kullanici rolu degistirildi...");
  }
}

class okucuyuNormal extends NormalUser {
  void oku() {
    print("Sadece okuyucu misafir kullanici...");
  }

  @override
  void girisYap() {
    // üst sinifta olusturulmus metod burada yeniden düzenlendi.
    print("Misafir kullanici giris yapti...");
  }
}
