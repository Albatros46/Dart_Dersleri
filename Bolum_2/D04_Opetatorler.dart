void main(List<String> args) {
  double sayi1 = 18;
  double sayi2 = 9;
  print("$sayi1 + $sayi2 toplami = ${sayi1 + sayi2}");
  print("$sayi1 - $sayi2 farki = ${sayi1 - sayi2}");
  print("$sayi1 * $sayi2 carpimi = ${sayi1 * sayi2}");
  print("$sayi1 / $sayi2 modu = ${sayi1 / sayi2}");
  print(
      "$sayi1 % $sayi2 toplami = ${sayi1 % sayi2}"); //sayini modüler artikmatigini bulur

//artirma ve azaltma operatorleri
  int sayi3 = 10;
  sayi3++; //sayi3  bir artir
  print(sayi3);
  sayi3 += 2; //sayi3 2 artir
  print(sayi3);
  print(sayi3++); //once kullan sayi3 ü sonra artir
  print(++sayi3); //once artir sayi3 ü sonra kullan.
  //ayni islemler eksi iicnde gecerlidir
}
