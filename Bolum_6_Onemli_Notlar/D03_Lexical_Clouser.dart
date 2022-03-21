/**Clouser özel bir fonkstiyondur, clouser ile bir üst kapsamdaki degiskenlerin degerleri degistirilebilir.
 * Lexical variable scope
 */
void main(List<String> args) {
  var anaDegisken = 12;

  void fonk1() {
    var a = 34;

    void icFonk() {
      var b = 90;
      //------------------
      print("Ic Fonk degiskeni b:$b");
      print("Fonk1 degiskeni a:$a");
      print("anaDegisken :$anaDegisken");
    }
  }

  var d = Topla(
      12); // topla fonksiyonuna parametre olarak bir deger gonderildi ve d degiskenine atandi
  var sonuc = d(
      4); // daha sonra d degiskenine baska bur deger atandi iste bu durum lexial clous 
  print("sonuc :$sonuc");
}

Function Topla(int eleman) {
  //deger donen fonksiyon
  return (int deger) => deger + eleman;
}
