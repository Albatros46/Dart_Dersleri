void main(List<String> args) {
  String ad = "Servet";
  String soyad = "Akcadag";
  String sehir = "pforzheim";
  var kurs = "Dart'i ve Flutter'i ogreniyorum";
  print(ad + " " + soyad);
  print("Ad Soyad :$ad $soyad");
  print("Ben $kurs");
  print("kurs degiskeninin karakter sayisi = " + kurs.length.toString());
  print("kurs degiskeninin karakter sayisi = ${kurs.length.toString()}");
  //kod kismini gruplama sekli ${ } icinde olur
  //--------------------------------------------------------------------------
  double en = 10, boy = 12;
  print("Eni $en ve boyu $boy olan diktortgenin alani :${en * boy}");
  print(
      "Eni ${en.toInt()} ve boyu ${boy.toInt()} olan diktortgenin alani :${en.toInt() * boy.toInt()}");

  print(sehir);
}


 /**launch.json dosyasina program kismina asagidaki gibi 
   * calismanasini istedigimiz dosyanin adini ve uzantisini yazacagiz.
   * launch.js nin icerigi
   * 
   * "configurations": [
        
        {
            "name": "Dart & Flutter",
            "request": "launch",
            "type": "dart",
            "program": "Bolum_1/D04_String_ifadeler.dart"
        }
    ]
   */