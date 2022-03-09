void main(List<String> args) {
  // 1.Soru adinizi soyadinizi ve yasinizi bir degiskende yazdirarark karakter yasini bildiriniz?
  String ad = "Servet", soyad = "AKCADAG";
  int yas = 33;
  print(
      "Benim adim ${ad} ${soyad}. $yas yasindayim. Ismimdeki karakter sayisi ${ad.length + soyad.length}");

  // 2.Bir ücgenin cevresinin toplamini ekrana yazdiriniz?
  var a = 10;
  int b = 8;
  double c = 15;
  print("Ücgenin cevresi =${a + b + c.toInt()}");
}
