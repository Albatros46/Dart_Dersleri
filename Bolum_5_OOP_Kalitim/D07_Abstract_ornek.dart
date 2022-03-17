import 'D01_Kalitim.dart';

/**Soyut class larla calistigimizda ileride degisiklik yapacak ise sadce o abstract class da
 * degisilik yaparak daha az efor sarfetmis olacagiz.
 */
void main(List<String> args) {
  Veritabani oracle = Oracle();
  oracle.userSave();
  oracle.userUpdate();
  oracle.userList();
  oracle.userDelete();
  Veritabani firebase =
      FireBaseDb(); // bu kullanim ile tekrar satir satir kod yazmaktan kurtulmus olacagiz
  userGuncelle(firebase);
  userGuncelle(oracle);
}

void userGuncelle(Veritabani veritabani) {
  veritabani.userUpdate();
}

abstract class Veritabani {
  //burada tanimlar bos olacak, cünkü henüz veritabani belli degil (sql, mysql, mongo, oracle postgrsql hangisi olacak ise)
  void userSave();
  void userUpdate();
  void userDelete();
  void userList();
}

class Oracle extends Veritabani {
  @override
  void userDelete() {
    // Oracle e gore kullanici silme islemi gerceklesek
    print("(Oracle DB)--> Kullanici Silindi...");
  }

  @override
  void userList() {
    // Oracle e gore kullanici liseteleme islemi gerceklesek
    print("(Oracle DB)--> Kullanicilar Listelendi...");
  }

  @override
  void userSave() {
    // Oracle e gore kullanici kaydetme islemi gerceklesek
    print("(Oracle DB)--> Kullanici Kayitedildi...");
  }

  @override
  void userUpdate() {
    // Oracle e gore kullanici güncelleme islemi gerceklesek
    print("(Oracle DB)--> Kullanici Güncellendi...");
  }
}

class FireBaseDb extends Veritabani {
  @override
  void userDelete() {
    // Oracle e gore kullanici silme islemi gerceklesek
    print("(FireBase DB)--> Kullanici Silindi...");
  }

  @override
  void userList() {
    // Oracle e gore kullanici liseteleme islemi gerceklesek
    print("(FireBase DB)--> Kullanicilar Listelendi...");
  }

  @override
  void userSave() {
    // Oracle e gore kullanici kaydetme islemi gerceklesek
    print("(FireBase DB)--> Kullanici Kayitedildi...");
  }

  @override
  void userUpdate() {
    // Oracle e gore kullanici güncelleme islemi gerceklesek
    print("(FireBase DB)--> Kullanici Güncellendi...");
  }
}
