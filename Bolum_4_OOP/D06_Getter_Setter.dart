/*  Getter : Sinif degiskenlerini okumak icin kullanilan özel fonksiyonlardir. Bu metodlarin amaci özellikle private yani 
tanimlandigi class disinda erisime kapali degiskenlerin okunmasini saglamaktadir.

  Setter : Sinif degiskenlerine veri atamak icin kullanilir. Bu metodlarin amaci özellikle 
  private degiskenlere veri atamak icin kullanilir-
 */
import 'D06_Musteri.dart';

void main(List<String> args) {
  Musteri m1 = Musteri(99);
  m1.musteriNuAta = 145; //setter metod
  m1.bilgileriYazdir();

  print(m1.bilgileriGoster); //getter metod
  print(m1.bilgileriSoyle); // getter diger kullanim
}
