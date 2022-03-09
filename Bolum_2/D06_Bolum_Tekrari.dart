/**
 * 1.3 tane double degisken olusturup bnlarin ortalamasini hesaplayalim
 * 2.kenarlari girilen ucgenin cesidini yazdiralim
 * 3.vize ve final notu girildiginde geceip gecemedigini hesaplayan uygulama
 * 
 */
void main(List<String> args) {
  print("3 tane double degisken olusturup bnlarin ortalamasini hesaplayalim");
  double sayi1 = 10, sayi2 = 3, sayi3 = 4, ortalama;
  ortalama = (sayi1 + sayi2 + sayi3) / 3;
  print("Girilen $sayi1 , $sayi2, $sayi3 ortalamasi :$ortalama");
  print("---------------------------");
  print("Kenarlari girilen ucgenin cesidini bulma islemi");
  int a = 3, b = 4, c = 5;
  if ((a == b) && (a == c)) {
    print("Eskenar ucgen");
  } else if ((a != b) && (a != c) && (b != c)) {
    print("Cesit kenar ucgen");
  } else {
    print("Ucgen ikiz kenardir");
  }
  print("---------------------------");
  print("Vize ve final notunu alip Gecti / Kaldi yazdirsin");
  double vize = 60.0, finall = 35.0, hesaplananNot = 0;
  hesaplananNot = ((vize * 40) + (finall * 60)) / 100;
  if (hesaplananNot >= 60) {
    print("Tebrikler GECTINIZ. Notunuz :$hesaplananNot");
  } else {
    print("Üzgünüz KALDINIZ. Notunuz :$hesaplananNot");
  }
  print("---------------------------");
  print("Ekrana 5 defa adinizi yazdirin.");
  for (int i = 1; i <= 5; i++) {
    print("$i.For dongusu");
  }
  int kontrol = 0;
  while (kontrol < 5) {
    print("${kontrol + 1}.While dongusu");
    kontrol++;
  }
  int kontrol1 = 0;
  do {
    print("${kontrol1 + 1}.do-while dongusu");
    kontrol1++;
  } while (kontrol1 < 5);
  print("---------------------------");
  print("1-100 arasinda 15 e tam bolunen sayilarin karaleri");
  for (int i = 1; i <= 100; i++) {
    if ((i % 3 == 0) && (i % 5 == 0)) {
      print("15'e tam bolunebilen $i nin karesi =${i * i}");
    }
  }
  print("---------------------------");
  print("Tanimlanan Integer sayinin faktoriyelini hesaplayalim");
  int x = 6;
  int sonuc = 1;
  int sayac = 1;
  while (sayac <= x) {
    sonuc = sonuc * sayac;
    sayac++;
  }
  print("Girilen $x sayisinin faktorileli :$sonuc");
}
