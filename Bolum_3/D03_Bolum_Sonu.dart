/*
Soru1 : Parametre olarak bir tane int sayi alan fonksiyon yaziniz.
bu fonksiyon aldigi deger kadar olan cift sayilarin toplamini geriye dondursun.

Soru2 : Daire alanini hesaplayan fonksiyon yaziniz. PI sayini opsiyonel olmali eger 
pi sayisi verilmediyse varsayilan olarak 3.14 olarak hesaplasin.

Soru3 : Bir ucgenin kenarlarini isimlendirilmis parametre olarak alan fonksiyon 
yaziniz. Bu fonksiyon kenar degerlerine gore bu ucgenin türünü ekrana yazdirsin.
*/
void main(List<String> args) {
  int top = ciftSayilarinToplami(10);
  print("Toplam $top");

  double alan = daireAlanHsp(5);
  print("Dairenin Alani : $alan");

  double alan2 = daireAlanHsp(5, 4); // pi degeri farkli olacak
  print("Dairenin Alani : $alan2");

  ucgenCesidi(birinciK: 10, ikinciK: 6, ucuncuK: 5);
}

//Soru1
int ciftSayilarinToplami(int sayi) {
  int toplam = 0;
  for (int i = 0; i < sayi; i++) {
    if (i % 2 == 0) {
      //eger girilen degerin mod 2 den 0 a esit ise bu sayi cift dir
      toplam = toplam + i;
    }
  }
  return toplam;
}

//Soru2
double daireAlanHsp(double yariCap, [double piDegeri = 3.14]) {
  return piDegeri * yariCap * yariCap;
}

//Soru3
void ucgenCesidi({int birinciK = 1, int ikinciK = 1, int ucuncuK = 1}) {
  if (birinciK == ikinciK && birinciK == ucuncuK) {
    print("ESKENAR UCGEN...");
  } else if (birinciK == ikinciK || birinciK == ucuncuK && ikinciK != ucuncuK) {
    print("IKIZ KENAR UCGEN...");
  } else {
    print("CESIT KENAR UCGEN");
  }
}
