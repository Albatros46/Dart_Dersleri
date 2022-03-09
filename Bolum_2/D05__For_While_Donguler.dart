void main(List<String> args) {
  print("For Dongusu");
  for (int i = 0; i < 5; i++) {
    print("$i Servet AKCADAG");
  }
  print("------------------");
  //gelismis for diye anlatilir for each
  List sehirler = ["Adana", "Kahramanmaras", "Izmir", "IStanbul", "Pforzheim"];
  for (String s in sehirler) {
    print("Sehirler : $s");
  }
  print("*******************");
  //sehirler listesinin uuznlugu kadar döngü calisacak ve listeyi yazdiracak
  for (int a = 0; a < sehirler.length; a++) {
    print("Sehirler : ${sehirler[a]}");
  }
  print("*******************");
  print("While Dongusu");
  int sayac = 0;
  while (sayac < 3) {
    print("While dongusu Okunan deger:$sayac");
    sayac++;
  }
  //do while dongusu
  print("*******************");
  print("do while Dongusu");
  int sayac2 = 0;
  do {
    print("do while dongusu Okunan deger:$sayac2");
    sayac2++;
  } while (sayac2 < 3);
  print("*******************");
  print("break ve continue kullanimi");
  for (int i = 0; i < 10; i++) {
    if (i >= 5) {
      print("Degiskenin degeri 5 den büyük donguden cikildi.");
      break;
    }
    print("Degiskenin degeri :$i");
  }
  //*********** */
  disardakidongu: //donguye isim verdik
  for (int i = 1; i <= 10; i++) {
    print("**********");
    for (int j = 1; j <= 10; j++) {
      print("$i x $j = ${i * j}");
      if (i == 5) {
        break disardakidongu;
      }
    }
  }
}
